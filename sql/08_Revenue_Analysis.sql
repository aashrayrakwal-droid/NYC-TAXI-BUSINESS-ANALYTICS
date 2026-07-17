-- Description:
-- This script analyzes revenue performance of the NYC Taxi business by
-- examining daily earnings, revenue trends, and identifying the highest
-- and lowest revenue-generating days. The analysis supports financial
-- reporting and business performance monitoring.


-- REVENUE ANALYSIS

-- Business Objective
-- Analyze revenue performance to understand business growth, identify
-- high-performing periods, and monitor financial trends throughout the month.

-- Business Questions
-- 1. What is the total revenue generated each day?
-- 2. Which days generated the highest revenue?
-- 3. Which days generated the lowest revenue?
-- 4. How consistent was daily revenue throughout the month?
-- 5. Are there any significant revenue anomalies?

-- QUERY 1
SELECT
    DATE(pickup_datetime) AS trip_date,
    ROUND(SUM(total_amount),2) AS daily_revenue
FROM fact_trips
GROUP BY DATE(pickup_datetime)
ORDER BY trip_date;

-- QUERY 2
SELECT
    DATE(pickup_datetime) AS trip_date,
    ROUND(SUM(total_amount),2) AS daily_revenue
FROM fact_trips
GROUP BY DATE(pickup_datetime)
ORDER BY daily_revenue DESC
LIMIT 10;

-- QUERY 3
SELECT
    DATE(pickup_datetime) AS trip_date,
    ROUND(SUM(total_amount),2) AS daily_revenue
FROM fact_trips
GROUP BY DATE(pickup_datetime)
ORDER BY daily_revenue
LIMIT 10;

-- QUERY 4
WITH daily_revenue AS
(SELECT
        DATE(pickup_datetime) AS trip_date,
        SUM(total_amount) AS daily_revenue
    FROM fact_trips
    GROUP BY DATE(pickup_datetime))
SELECT
    ROUND(AVG(daily_revenue),2) AS average_daily_revenue,
    ROUND(MIN(daily_revenue),2) AS minimum_daily_revenue,
    ROUND(MAX(daily_revenue),2) AS maximum_daily_revenue,
    ROUND(STDDEV(daily_revenue),2) AS revenue_standard_deviation
FROM daily_revenue;

-- QUERY 5
WITH daily_revenue AS
(SELECT
        DATE(pickup_datetime) AS trip_date,
        ROUND(SUM(total_amount),2) AS daily_revenue
    FROM fact_trips
    GROUP BY DATE(pickup_datetime))
SELECT * FROM daily_revenue
WHERE daily_revenue <
(SELECT AVG(daily_revenue) * 0.70
    FROM daily_revenue)
ORDER BY trip_date;


-- END OF REVENUE ANALYSIS
