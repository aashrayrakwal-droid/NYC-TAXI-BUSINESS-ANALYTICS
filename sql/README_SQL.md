# SQL Module – NYC Taxi Analytics Platform

## Overview

This directory contains all SQL scripts used to build the analytical data warehouse and perform business analysis for the NYC Taxi Analytics Platform.

The project follows a dimensional modeling approach using a star schema and demonstrates practical SQL skills required for data analytics and business intelligence.

---

# Database

- PostgreSQL

---

# Skills Demonstrated

- Database Design
- Star Schema Modeling
- Fact & Dimension Tables
- Primary & Foreign Keys
- Constraints
- Indexing
- Data Validation
- Aggregations
- Common Table Expressions (CTEs)
- Window Functions
- Analytical Views

---

# Project Structure

```
sql/

01_database_setup.sql
02_create_tables.sql
03_constraints.sql
04_indexes.sql
05_data_validation.sql
06_business_overview.sql
07_operational_analysis.sql
08_revenue_analysis.sql
09_customer_analysis.sql
10_advanced_sql_analytics.sql
11_views.sql
```

---

# Business Analysis Covered

### Business Overview

- Total Trips
- Total Revenue
- Average Fare
- Average Trip Distance
- Average Trip Duration
- Average Speed

### Operational Analysis

- Vendor Performance
- Payment Analysis
- Demand by Hour
- Demand by Weekday
- Fleet Efficiency
- Peak Revenue Hours

### Revenue Analysis

- Daily Revenue
- Revenue Distribution
- Revenue Consistency
- Revenue Anomaly Detection

### Customer Analysis

- Passenger Distribution
- Fare Analysis
- Trip Distance Analysis
- Tipping Behaviour

### Advanced SQL Analytics

- Running Revenue
- Revenue Ranking
- 7-Day Moving Average
- Peak Revenue Hour using Window Functions

---

# SQL Concepts Used

- SELECT
- GROUP BY
- ORDER BY
- CASE
- Aggregate Functions
- Common Table Expressions (CTEs)
- Window Functions
- SUM() OVER()
- AVG() OVER()
- DENSE_RANK()
- ROW_NUMBER()
- PARTITION BY
- Views

---

# Power BI Integration

The SQL views created in `11_views.sql` serve as the primary data source for the Power BI dashboard.

---

# Project Outcome

This SQL module transforms raw taxi trip data into meaningful business insights through structured analytical queries and reusable views. The project demonstrates practical SQL skills commonly used in data analytics, business intelligence, and reporting environments.
