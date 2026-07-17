-- Description:
-- This script analyzes operational performance of the NYC Taxi business by
-- examining vendors, payment methods, temporal demand patterns, fleet
-- efficiency, and peak operating hours.

--  OPERATIONAL ANALYSIS

-- Business Objective
-- Evaluate operational efficiency by analyzing vendor performance, payment
-- preferences, temporal demand, and fleet utilization.

-- Business Questions
-- 1. Which vendor completed the most trips?
-- 2. Which payment method is most frequently used?
-- 3. At what hours does demand peak?
-- 4. Which days of the week are busiest?
-- 5. Which hours generate the highest revenue per minute?
-- 6. Which hour generates the highest revenue each day?


-- Query 1
-- Business Question:
-- Which vendor completed the highest number of trips?

SELECT
    vendor_id,
    COUNT(*) AS total_trips
FROM fact_trips
GROUP BY vendor_id
ORDER BY total_trips DESC;

-- Query 2
-- Business Question:
-- Which payment methods are most commonly used?

SELECT
    payment_type,
    COUNT(*) AS total_transactions,
    ROUND(SUM(total_amount),2) AS total_revenue,
    ROUND(AVG(total_amount),2) AS average_revenue
FROM fact_trips
GROUP BY payment_type
ORDER BY total_transactions DESC;

-- Query 3
-- Business Question:
-- During which hour is taxi demand the highest?

SELECT
    EXTRACT(HOUR FROM pickup_datetime) AS pickup_hour,
    COUNT(*) AS total_trips
FROM fact_trips
GROUP BY pickup_hour
ORDER BY pickup_hour;

-- Query 4
-- Business Question:
-- Which day of the week records the highest trip volume?
SELECT
    TO_CHAR(pickup_datetime,'Day') AS weekday,
    COUNT(*) AS total_trips
FROM fact_trips
GROUP BY weekday
ORDER BY total_trips DESC;

-- Query 5
-- Business Question:
-- Which pickup hour generates the highest revenue per minute?

SELECT
    EXTRACT(HOUR FROM pickup_datetime) AS pickup_hour,
    COUNT(*) AS total_trips,
    ROUND(SUM(total_amount),2) AS total_revenue,
    ROUND(SUM(trip_duration),2) AS total_trip_minutes,
    ROUND(SUM(total_amount)/SUM(trip_duration),2) AS revenue_per_minute,
    ROUND(AVG(total_amount),2) AS average_revenue_per_trip,
    ROUND(AVG(trip_duration),2) AS average_trip_duration
FROM fact_trips
WHERE trip_duration > 0
GROUP BY pickup_hour
ORDER BY revenue_per_minute DESC;

-- Query 6
-- Business Question:
-- Which hour generated the highest revenue each day?

WITH hourly_revenue AS
(   SELECT
        DATE(pickup_datetime) AS trip_date,
        EXTRACT(HOUR FROM pickup_datetime) AS pickup_hour,
        ROUND(SUM(total_amount),2) AS hourly_revenue
    FROM fact_trips
    GROUP BY
        DATE(pickup_datetime),
        EXTRACT(HOUR FROM pickup_datetime)
),
ranked_hours AS
(   SELECT  *,
        ROW_NUMBER() OVER
        ( PARTITION BY trip_date
          ORDER BY hourly_revenue DESC) AS hour_rank
    FROM hourly_revenue
)
SELECT
    trip_date,
    pickup_hour,
    hourly_revenue
FROM ranked_hours
WHERE hour_rank = 1
ORDER BY trip_date;


-- ===============================================================================
-- END OF OPERATIONAL ANALYSIS
-- ===============================================================================
