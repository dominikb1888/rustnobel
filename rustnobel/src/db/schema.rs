// @generated automatically by Diesel CLI.

diesel::table! {
    address (id) {
        id -> Nullable<BigInt>,
        address_type -> Nullable<Text>,
        street -> Nullable<Text>,
        zip -> Nullable<Text>,
        city -> Nullable<Text>,
        country -> Nullable<Text>,
        coordinates -> Nullable<Text>,
        person_id -> Nullable<BigInt>,
    }
}

diesel::table! {
    nobelwinner (id) {
        id -> Nullable<BigInt>,
        firstname -> Nullable<Text>,
        surname -> Nullable<Text>,
        born -> Nullable<Date>,
        died -> Nullable<Date>,
        gender -> Nullable<Text>,
        year -> Nullable<BigInt>,
        category -> Nullable<Text>,
        overallmotivation -> Nullable<Text>,
        motivation -> Nullable<Text>,
        org_id -> Nullable<BigInt>,
    }
}

diesel::table! {
    organization (id) {
        id -> Nullable<BigInt>,
        name -> Nullable<Text>,
        category -> Nullable<Text>,
        address_id -> Nullable<BigInt>,
    }
}

diesel::joinable!(address -> nobelwinner (person_id));
diesel::joinable!(nobelwinner -> organization (org_id));
diesel::joinable!(organization -> address (address_id));

diesel::allow_tables_to_appear_in_same_query!(address, nobelwinner, organization,);
