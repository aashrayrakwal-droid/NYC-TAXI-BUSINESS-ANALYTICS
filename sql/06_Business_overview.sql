SELECT
    COUNT(*) AS total_trips,
    ROUND(SUM(total_amount),2) AS total_revenue,
    ROUND(AVG(fare_amount),2) AS average_fare,
    ROUND(AVG(trip_distance),2) AS average_trip_distance,
    ROUND(AVG(trip_duration_minutes),2) AS average_trip_duration_minutes
FROM taxi.fact_trips;
