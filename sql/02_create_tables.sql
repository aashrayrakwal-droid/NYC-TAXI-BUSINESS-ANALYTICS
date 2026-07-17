CREATE SCHEMA IF NOT EXISTS taxi;
SET search_path TO taxi;
CREATE TABLE fact_trips (
    trip_id BIGSERIAL PRIMARY KEY,

    vendor_id SMALLINT NOT NULL,

    pickup_datetime TIMESTAMP NOT NULL,

    dropoff_datetime TIMESTAMP NOT NULL,

    passenger_count SMALLINT NOT NULL,

    trip_distance NUMERIC(6,2) NOT NULL,

    pickup_longitude NUMERIC(9,6),

    pickup_latitude NUMERIC(9,6),

    rate_code_id SMALLINT NOT NULL,

    store_and_fwd_flag CHAR(1),

    dropoff_longitude NUMERIC(9,6),

    dropoff_latitude NUMERIC(9,6),

    payment_type SMALLINT NOT NULL,

    fare_amount NUMERIC(8,2) NOT NULL,

    extra NUMERIC(6,2),

    mta_tax NUMERIC(4,2),

    tip_amount NUMERIC(8,2),

    tolls_amount NUMERIC(8,2),

    improvement_surcharge NUMERIC(4,2),

    total_amount NUMERIC(8,2) NOT NULL,

    trip_duration_minutes NUMERIC(8,2),

    is_negative_fare BOOLEAN
);

-- DIMESNION TABLE VENDOR
create TABLE dim_vendor (
    vendor_id SMALLINT PRIMARY KEY
    venor_name varchar(100) NOT NULL
);

-- DIMENSION TABLE PAYMENT TYPE
CREATE TABLE dim_payment_type(
    payment_type_id SMALLINT PRIMARY KEY
    payment_description varchar(50) NOT NULL
)

-- DIMENSION TABLE RATE CODE
create Table dim_rate_code(
    rate_code_id INT PRIMARY KEY
    rate_code_description varchar(50) NOT NULL
)