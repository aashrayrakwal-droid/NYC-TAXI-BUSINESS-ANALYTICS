-- Description:
-- This script generates executive-level business KPIs for the NYC Taxi
-- Analytics Platform. It provides a high-level overview of operational
-- performance, revenue generation, and trip characteristics.
--
-- BUSINESS OVERVIEW
-- Provide high-level operational KPIs that summarize the overall performance of
-- the NYC Yellow Taxi business during January 2015.

-- The queries in this script answer the following business questions:

-- 1. How many trips were completed?
-- 2. How much total revenue was generated?
-- 3. What is the average revenue per trip?
-- 4. What is the average fare amount?
-- 5. What is the average trip distance?
-- 6. What is the average trip duration?
-- 7. What is the average tip amount?
-- 8. What was the maximum and minimum fare recorded?


-- Query 1
-- Business Question:
-- How many taxi trips were completed?
SELECT
    COUNT(*) AS total_trips
FROM fact_trips;

-- Query 2
-- Business Question:
-- How much revenue was generated?
SELECT
    ROUND(SUM(total_amount),2) AS total_revenue
FROM fact_trips;

-- Query 3
-- Business Question:
-- What is the average revenue generated per trip?
SELECT
    ROUND(AVG(total_amount),2) AS average_revenue_per_trip
FROM fact_trips;

-- Query 4
-- Business Question:
-- What is the average fare amount?
SELECT
    ROUND(AVG(fare_amount),2) AS average_fare
FROM fact_trips;

-- Query 5
-- Business Question:
-- What is the average trip distance?
SELECT
    ROUND(AVG(trip_distance),2) AS average_trip_distance
FROM fact_trips;

-- Query 6
-- Business Question:
-- What is the average trip duration?
SELECT
    ROUND(AVG(trip_duration),2) AS average_trip_duration_minutes
FROM fact_trips;

-- Query 7
-- Business Question:
-- What is the average tip amount?
SELECT
    ROUND(AVG(tip_amount),2) AS average_tip
FROM fact_trips;

-- Query 8
-- Business Question:
-- What are the highest and lowest fares recorded?
SELECT
    ROUND(MAX(fare_amount),2) AS maximum_fare
    ROUND(MIN(fare_amount),2) AS minimum_fare
FROM fact_trips;

-- Query 9
-- Business Question:
-- What is the average passenger count per trip?
SELECT
    ROUND(AVG(passenger_count),2) AS average_passenger_count
FROM fact_trips;

-- Query 10
-- Business Question:
-- What is the average speed across all completed trips?
-- Formula:
-- Speed = Distance / (Duration in Hours)
SELECT
    ROUND(
        AVG(
            trip_distance /
            (trip_duration / 60)
        ),
        2
    ) AS average_speed_mph
FROM fact_trips
WHERE trip_duration > 0;


-- ===============================================================================
-- END OF BUSINESS OVERVIEW
-- ===============================================================================

