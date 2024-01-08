// models.rs
use diesel::prelude::*;

use diesel::Queryable;

use chrono::NaiveDate;
use serde::Serialize;

// TODO: Add SQL Traits for celes::country::Country
// TODO: Addd SQL Traits for geo::coordinates::Coord
// use celes::Country;
// use geo::Coord;

#[derive(Debug, Queryable, PartialEq, Selectable, Serialize)]
#[diesel(table_name = crate::db::schema::address)]
#[diesel(check_for_backend(diesel::pg::Pg))]
pub struct Address {
    pub id: Option<i64>,
    pub address_type: Option<String>,
    pub street: Option<String>,
    pub zip: Option<String>,
    pub city: Option<String>,
    pub country: Option<String>,
    pub coordinates: Option<String>,
    pub person_id: Option<i64>,
}

#[derive(Debug, Queryable, PartialEq, Selectable, Serialize)]
#[diesel(table_name = crate::db::schema::organization)]
#[diesel(check_for_backend(diesel::pg::Pg))]
pub struct Organization {
    pub id: Option<i64>,
    pub name: Option<String>,
    pub category: Option<String>,
    pub address_id: Option<i64>,
}

#[derive(Debug, Queryable, PartialEq, Selectable, Serialize)]
#[diesel(table_name = crate::db::schema::nobelwinner)]
#[diesel(check_for_backend(diesel::pg::Pg))]
pub struct NobelWinner {
    pub id: Option<i64>,
    pub firstname: Option<String>,
    pub surname: Option<String>,
    pub born: Option<NaiveDate>,
    pub died: Option<NaiveDate>,
    pub gender: Option<String>,
    pub year: Option<i64>,
    pub category: Option<String>,
    pub overallmotivation: Option<String>,
    pub motivation: Option<String>,
    pub org_id: Option<i64>,
}
