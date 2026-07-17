-- Description:
-- This script creates SQL views that serve as the data source for Power BI
-- dashboards. The views provide reusable business datasets, simplify report
-- development, and improve maintainability by abstracting complex SQL logic.

-- SQL VIEWS

-- Business Objective
-- Create reusable analytical views for business reporting and dashboard
-- development.

-- Views Created
-- 1. vw_business_overview
-- 2. vw_operational_analysis
-- 3. vw_revenue_analysis
-- 4. vw_customer_analysis

-- View 1 : Business Overview
CREATE OR REPLACE VIEW vw_business_overview AS
SELECT
    COUNT(*) AS total_trips,
    ROUND(SUM(total_amount),2) AS total_revenue,
    ROUND(AVG(total_amount),2) AS average_revenue_per_trip,
    ROUND(AVG(fare_amount),2) AS average_fare,
    ROUND(AVG(trip_distance),2) AS average_trip_distance,
    ROUND(AVG(trip_duration),2) AS average_trip_duration,
    ROUND(AVG(tip_amount),2) AS average_tip,
    ROUND(AVG(passenger_count),2) AS average_passenger_count,
    ROUND(
        AVG(trip_distance /(trip_duration/60)),2
  ) AS average_speed
FROM fact_trips
WHERE trip_duration > 0;

-- View 2 : Operational Analysis
CREATE OR REPLACE VIEW vw_operational_analysis AS
SELECT
    EXTRACT(HOUR FROM pickup_datetime) AS pickup_hour,
    COUNT(*) AS total_trips,
    ROUND(SUM(total_amount),2) AS total_revenue,
    ROUND( SUM(total_amount)/SUM(trip_duration),2) AS revenue_per_minute,
    ROUND(AVG(trip_duration),2) AS average_trip_duration
FROM fact_trips
WHERE trip_duration > 0
GROUP BY pickup_hour;

-- View 3 : Revenue Analysis
CREATE OR REPLACE VIEW vw_revenue_analysis AS
SELECT
    DATE(pickup_datetime) AS trip_date,
    ROUND(SUM(total_amount),2) AS daily_revenue
FROM fact_trips
GROUP BY DATE(pickup_datetime);

-- View 4 : Customer Analysis
CREATE OR REPLACE VIEW vw_customer_analysis AS
SELECT
    passenger_count,
    COUNT(*) AS total_trips,
    ROUND(AVG(fare_amount),2) AS average_fare,
    ROUND(AVG(trip_distance),2) AS average_trip_distance,
    ROUND(AVG(tip_amount),2) AS average_tip
FROM fact_trips
GROUP BY passenger_count;

-- END OF SQL VIEWS
-- */
