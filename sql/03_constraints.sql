-- Description:
-- Add foreign key constraints to enforce referential integrity between
-- the fact table and dimension tables.
--
-- =============================================================================
-- Vendor
ALTER TABLE fact_trips
ADD CONSTRAINT fk_vendor
FOREIGN KEY (vendor_id)
REFERENCES dim_vendor(vendor_id
-- Payment
ALTER TABLE fact_trips
ADD CONSTRAINT fk_payment
FOREIGN KEY (payment_type)
REFERENCES dim_payment(payment_id);
-- Rate Code
ALTER TABLE fact_trips
ADD CONSTRAINT fk_ratecode
FOREIGN KEY (ratecode_id)
REFERENCES dim_ratecode(ratecode_id);
