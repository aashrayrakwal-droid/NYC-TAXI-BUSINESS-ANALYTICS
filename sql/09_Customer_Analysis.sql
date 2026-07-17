-- Description:
-- This script analyzes customer travel behavior by examining passenger
-- counts, trip distances, fare patterns, tipping behavior, and payment
-- preferences. The analysis helps understand customer usage patterns and
-- supports pricing and service optimization.

-- CUSTOMER ANALYSIS

-- Business Objective
-- Understand customer travel behavior by analyzing passenger composition,
-- trip characteristics, fare patterns, tipping behavior, and payment
-- preferences.

-- Business Questions
-- 1. How many passengers typically travel per trip?
-- 2. What is the average trip distance by passenger count?
-- 3. How does fare vary with passenger count?
-- 4. How does tipping behavior vary across payment methods?
-- 5. Which payment methods generate the highest average tip?


-- Query 1
SELECT
    passenger_count,
    COUNT(*) AS total_trips,
    ROUND(COUNT(*) * 100.0 /SUM(COUNT(*)) OVER (),2) AS percentage_of_trips
FROM fact_trips
GROUP BY passenger_count
ORDER BY passenger_count;

-- Query 2
SELECT
    passenger_count,
    ROUND(AVG(trip_distance),2) AS average_trip_distance,
    ROUND(MAX(trip_distance),2) AS maximum_trip_distance
FROM fact_trips
GROUP BY passenger_count
ORDER BY passenger_count;

-- Query 3
SELECT
    passenger_count,
    ROUND(AVG(fare_amount),2) AS average_fare,
    ROUND(AVG(total_amount),2) AS average_total_amount
FROM fact_trips
GROUP BY passenger_count
ORDER BY passenger_count;

-- Query 4
SELECT
    payment_type,
    ROUND(AVG(tip_amount),2) AS average_tip,
    ROUND(MAX(tip_amount),2) AS highest_tip,
    ROUND(SUM(tip_amount),2) AS total_tips
FROM fact_trips
GROUP BY payment_type
ORDER BY average_tip DESC;

-- Query 5
SELECT
    payment_type,
    COUNT(*) AS total_transactions,
    ROUND(AVG(tip_amount),2) AS average_tip,
    ROUND( AVG( CASE WHEN total_amount > 0
                THEN (tip_amount / total_amount) * 100 END),2) AS average_tip_percentage
FROM fact_trips
GROUP BY payment_type
ORDER BY average_tip_percentage DESC;
