ALTER TABLE taxi.fact_trips
ADD CONSTRAINT fk_vendor
FOREIGN KEY (vendor_id)
REFERENCES taxi.dim_vendor(vendor_id);

ALTER TABLE taxi.fact_trips
ADD CONSTRAINT fk_payment_type
FOREIGN KEY (payment_type)
REFERENCES taxi.dim_payment(payment_id)
  
ALTER TABLE taxi.fact_trips
ADD CONSTRAINT fk_rate_code
FOREIGN KEY (rate_code_id)
REFERENCES taxi.dim_rate_code(rate_code_id);
