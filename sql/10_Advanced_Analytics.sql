-- Description:
-- This script demonstrates advanced SQL analytical techniques using Common
-- Table Expressions (CTEs) and Window Functions. The analyses provide
-- cumulative reporting, revenue rankings, trend analysis, and operational
-- insights while showcasing advanced SQL capabilities.

-- ADVANCED SQL ANALYTICS

  
-- Business Objective
-- Leverage advanced SQL techniques to perform cumulative analysis, ranking,
-- trend detection, and partitioned reporting for executive decision-making.

-- SQL Concepts Demonstrated
-- • Common Table Expressions (CTEs)
-- • SUM() OVER()
-- • AVG() OVER()
-- • DENSE_RANK()
-- • ROW_NUMBER()
-- • PARTITION BY
-- • Window Frames

-- Business Questions
-- 1. How did cumulative revenue grow throughout the month?
-- 2. Which days generated the highest revenue?
-- 3. What is the underlying revenue trend after smoothing daily fluctuations?
-- 4. Which hour generated the highest revenue on each day?

-- Query 1
WITH daily_revenue AS
(SELECT
        DATE(pickup_datetime) AS trip_date,
        ROUND(SUM(total_amount),2) AS daily_revenue
    FROM fact_trips
    GROUP BY DATE(pickup_datetime))
SELECT
    trip_date,
    daily_revenue,
    ROUND(
        SUM(daily_revenue) OVER(ORDER BY trip_date),2) AS cumulative_revenue
FROM daily_revenue
ORDER BY trip_date;

-- Query 2
WITH daily_revenue AS
(SELECT
        DATE(pickup_datetime) AS trip_date,
        ROUND(SUM(total_amount),2) AS daily_revenue
    FROM fact_trips
    GROUP BY DATE(pickup_datetime))
SELECT
    trip_date,
    daily_revenue,
    DENSE_RANK() OVER(
        ORDER BY daily_revenue DESC) AS revenue_rank
FROM daily_revenue
ORDER BY revenue_rank;

-- Query 3
WITH daily_revenue AS
(SELECT
        DATE(pickup_datetime) AS trip_date,
        ROUND(SUM(total_amount),2) AS daily_revenue
    FROM fact_trips
    GROUP BY DATE(pickup_datetime))
SELECT
    trip_date,
    daily_revenue,
    ROUND(
        AVG(daily_revenue)
        OVER(ORDER BY trip_date ROWS BETWEEN 6 PRECEDING AND CURRENT ROW),2) AS moving_average_7_days
FROM daily_revenue
ORDER BY trip_date;

-- Query 4
WITH hourly_revenue AS
( SELECT
        DATE(pickup_datetime) AS trip_date,
        EXTRACT(HOUR FROM pickup_datetime) AS pickup_hour,
        ROUND(SUM(total_amount),2) AS hourly_revenue
    FROM fact_trips
    GROUP BY
        DATE(pickup_datetime),
        EXTRACT(HOUR FROM pickup_datetime)
),
ranked_hours AS
( SELECT
        trip_date,
        pickup_hour,
        hourly_revenue,
        ROW_NUMBER()
        OVER( PARTITION BY trip_date ORDER BY hourly_revenue DESC) AS hour_rank
    FROM hourly_revenue)
SELECT
    trip_date,
    pickup_hour,
    hourly_revenue
FROM ranked_hours
WHERE hour_rank = 1
ORDER BY trip_date;

-- END OF ADVANCED SQL ANALYTICS
