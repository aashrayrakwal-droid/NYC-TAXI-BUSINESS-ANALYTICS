-- Description:
-- Perform post-load validation checks to ensure data quality before business analysis.
--
-- VALIDATION 1 -  ROW COUNT
SELECT count(*)  AS total_trips from taxi.fact_trips ;
-- VALIDATION 2 DATE RANGE
SELECT 
MIN(pickup_datetime) as earliest_pickup,
MAX(pickup_datetime) as latest_pickup
FROM taxi.fact_trips;
-- VALIDATION 3 NEGATIVE FARE COUNT
SELECT count(*) AS negative_fares
FROM taxi.fact_trips
WHERE is_negative_fare = TRUE;

-- VALIDATION 4 MISSING VENDOR ID
SELECT vendor_id , count(*) AS trips 
FROM taxi.fact_trips
GROUP BY vendor_id
ORDER BY vendor_id;

-- VALIDATION 5 PAYMENT TYPE DISTRIBUION
SELECT count(*) as trips , payment_type 
FROM taxi.fact_trips 
GROUP BY payment_type 
ORDER BY payment_type ;

-- VALIDATION 6 VALID PASSENGER COUNT
SELECT COUNT(*)
FROM taxi.fact_trips
WHERE passenger_count <= 0;

-- VALIDATION 7 NEGATIVE TRIP DURATION
SELECT COUNT(*)
FROM taxi.fact_trips
WHERE trip_duration < 0;

