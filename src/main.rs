//! Run with
//!
//! ```sh
//! export DATABASE_URL=postgres://localhost/your_db
//! diesel migration run
//! cargo run -p example-diesel-async-postgres
//! ```
//!
//! Checkout the [diesel webpage](https://diesel.rs) for
//! longer guides about diesel
//!
//! Checkout the [crates.io source code](https://github.com/rust-lang/crates.io/)
//! for a real world application using axum and diesel
use askama::Template;
use axum::{
    async_trait,
    extract::{FromRef, FromRequestParts},
    http::{request::Parts, StatusCode},
    response::{Html, IntoResponse, Json},
    routing::get,
    Router,
};
use diesel::dsl::count;
use diesel::prelude::*;
use diesel_async::{
    pooled_connection::AsyncDieselConnectionManager, AsyncPgConnection, RunQueryDsl,
};
use serde_json::{json, Value};
use std::net::SocketAddr;
use tower_http::services::ServeDir;
use tracing_subscriber::{layer::SubscriberExt, util::SubscriberInitExt};
mod db;
use crate::db::models::{Address, NobelWinner, Organization};
use crate::db::schema::{address, nobelwinner, organization};
type Pool = bb8::Pool<AsyncDieselConnectionManager<AsyncPgConnection>>;

#[tokio::main]
async fn main() {
    tracing_subscriber::registry()
        .with(
            tracing_subscriber::EnvFilter::try_from_default_env()
                .unwrap_or_else(|_| "rustnobel=debug".into()),
        )
        .with(tracing_subscriber::fmt::layer())
        .init();

    // let db_url = std::env::var("DATABASE_URL").unwrap();
    let db_url = "postgres://postgres:4pTH2WWb@localhost/nobeldata";

    // set up connection pool
    let config = AsyncDieselConnectionManager::<diesel_async::AsyncPgConnection>::new(db_url);
    let pool = bb8::Pool::builder().build(config).await.unwrap();

    // build our application with some routes
    let app = Router::new()
        .route("/nobelwinners", get(get_data))
        .route("/countries", get(get_countries))
        .route("/", get(get_index))
        .nest_service("/static/scripts", ServeDir::new("static/scripts"))
        .nest_service("/static/styles", ServeDir::new("static/styles"))
        .nest_service("/static/data", ServeDir::new("static/data"))
        .with_state(pool);
    // run it with hyper
    let addr = SocketAddr::from(([127, 0, 0, 1], 3000));
    tracing::debug!("listening on {addr}");
    let listener = tokio::net::TcpListener::bind(addr).await.unwrap();
    axum::serve(listener, app).await.unwrap();
}

// Ensure the app is boxed using `axum::routing::BoxRoute`

// we can also write a custom extractor that grabs a connection from the pool
// which setup is appropriate depends on your application
struct DatabaseConnection(
    bb8::PooledConnection<'static, AsyncDieselConnectionManager<AsyncPgConnection>>,
);

#[async_trait]
impl<S> FromRequestParts<S> for DatabaseConnection
where
    S: Send + Sync,
    Pool: FromRef<S>,
{
    type Rejection = (StatusCode, String);

    async fn from_request_parts(_parts: &mut Parts, state: &S) -> Result<Self, Self::Rejection> {
        let pool = Pool::from_ref(state);

        let conn = pool.get_owned().await.map_err(internal_error)?;

        Ok(Self(conn))
    }
}

#[derive(Template)]
#[template(path = "index.html")]
pub struct IndexTemplate {
    data: Vec<String>,
}

async fn get_data(
    DatabaseConnection(mut conn): DatabaseConnection,
) -> Result<Json<Vec<(NobelWinner, Organization, Address)>>, (StatusCode, String)> {
    // Use Diesel's query builder to perform queries
    let data = nobelwinner::table
        .inner_join(organization::table.on(nobelwinner::org_id.eq(organization::id)))
        .inner_join(address::table.on(organization::address_id.eq(address::id)))
        .load::<(NobelWinner, Organization, Address)>(&mut conn)
        .await
        .map_err(internal_error)?;

    Ok(Json(data))
}

async fn get_countries(
    DatabaseConnection(mut conn): DatabaseConnection,
) -> Result<Json<Value>, (StatusCode, String)> {
    let countries = address::table
        .group_by(address::country)
        .select((address::country, count(address::id).nullable()))
        .filter(address::address_type.eq("organization"))
        .order(address::country)
        .load::<(Option<String>, Option<i64>)>(&mut conn)
        .await
        .map_err(internal_error)?;

    let json_result = serde_json::to_value(
        &countries
            .into_iter()
            .filter_map(|(country, count)| {
                // Handling Option values if necessary (due to nullable columns)
                country.and_then(|c| count.map(|ct| json!({"key": c, "value": ct})))
            })
            .collect::<Vec<_>>(),
    )
    .map_err(internal_error)?;

    Ok(Json(json_result))
}

async fn get_index(DatabaseConnection(mut conn): DatabaseConnection) -> impl IntoResponse {
    match address::table
        .select(address::country)
        .filter(address::address_type.eq("organization"))
        .order(address::country)
        .distinct()
        .load::<Option<String>>(&mut conn)
        .await
    {
        Ok(data) => {
            let codes = data.into_iter().flatten().collect();
            let template = IndexTemplate { data: codes };
            let reply_html = template.render().unwrap();
            (StatusCode::OK, Html(reply_html).into_response())
        }
        Err(_err) => {
            // Handle error, maybe return an error response
            (
                StatusCode::INTERNAL_SERVER_ERROR,
                "Failed to retrieve data".into_response(),
            )
        }
    }
}

/// Utility function for mapping any error into a `500 Internal Server Error`
/// response.
fn internal_error<E>(err: E) -> (StatusCode, String)
where
    E: std::error::Error,
{
    (StatusCode::INTERNAL_SERVER_ERROR, err.to_string())
}
