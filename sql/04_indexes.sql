CREATE INDEX idx_fact_pickup_datetime
ON taxi.fact_trips(pickup_datetime);

CREATE INDEX idx_fact_vendor
ON taxi.fact_trips(vendor_id);

CREATE INDEX idx_fact_payment
ON taxi.fact_trips(payment_type);

CREATE INDEX idx_fact_ratecode
ON taxi.fact_trips(rate_code_id);

CREATE INDEX idx_fact_passenger
ON taxi.fact_trips(passenger_count);

CREATE INDEX idx_fact_distance
ON taxi.fact_trips(trip_distance);

SELECT indexname , indexdef 
FROM pg_indexes WHERE schemaname = 'taxi'
ORDER BY indexname
