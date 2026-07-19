# 🚖 NYC Taxi Analytics Platform

An end-to-end data analytics project built using Python, PostgreSQL, SQL, and Power BI to analyze over **12.7 million NYC Yellow Taxi trips**. The project demonstrates the complete analytics workflow—from raw data cleaning and feature engineering to data warehousing and interactive business intelligence dashboards.

---

## Project Overview

This project transforms raw NYC Taxi trip data into meaningful business insights through a modern analytics pipeline.

The workflow includes:

- Data cleaning and preprocessing using Python
- Feature engineering for analytical reporting
- Data warehousing in PostgreSQL using a star schema
- Interactive dashboards in Power BI
- Business insights and executive reporting

---

## Business Problem

Taxi operators generate millions of trip records every month. Raw transactional data alone provides limited value unless it is cleaned, structured, and analyzed.

The objective of this project is to:

- Identify revenue trends
- Analyze customer payment behavior
- Study trip patterns
- Monitor operational performance
- Present executive-level insights through an interactive dashboard

---

## Project Architecture

```
NYC TLC Dataset (.csv)
        │
        ▼
Python
(Data Cleaning & Feature Engineering)
        │
        ▼
Clean Dataset
        │
        ▼
PostgreSQL
(Star Schema Data Warehouse)
        │
        ▼
Power BI
(DAX Measures & Interactive Dashboard)
        │
        ▼
Business Insights
```

---

## Technology Stack

| Category | Tools |
|----------|------|
| Programming | Python |
| Libraries | Pandas, NumPy |
| Database | PostgreSQL |
| Query Language | SQL |
| Visualization | Power BI |
| Version Control | Git & GitHub |

---

## Dataset

- Source: NYC Taxi & Limousine Commission (TLC)
- Dataset: Yellow Taxi Trip Records
- Time Period: January 2015
- Records: ~12.7 Million Trips

---

## Data Engineering

The raw dataset was processed using Python before loading into PostgreSQL.

Cleaning included:

- Removal of duplicate records
- Removal of invalid trips
- Handling missing values
- Trip duration calculation
- Pickup hour extraction
- Pickup day extraction
- Data quality validation
- Feature engineering

---

## Database Design

A star schema was implemented in PostgreSQL.

Main tables:

- Fact Trips
- Dim Vendor
- Dim Payment
- Dim Rate Code

This design enables efficient analytical queries and seamless integration with Power BI.

---

## Dashboard Pages

### Executive Overview

Provides a high-level snapshot of business performance.

KPIs include:

- Total Trips
- Total Revenue
- Average Fare
- Average Distance
- Average Trip Duration
- Daily Revenue Trend
- Revenue by Pickup Hour

---

### Customer & Payment Analysis

Analyzes customer payment behavior and vendor performance.

Includes:

- Payment Type Distribution
- Revenue by Vendor
- Revenue by Payment Method
- Average Fare by Rate Code

---

### Operations & Trip Analysis

Explores operational trends throughout the day.

Includes:

- Average Trip Distance by Hour
- Average Trip Duration by Hour
- Revenue by Day of Week
- Average Fare by Hour

---

### Executive Summary

Summarizes key findings through executive-level insights including:

- Top Revenue Day
- Peak Demand Hour
- Most Used Payment Method
- Best Performing Vendor
- Business Recommendations

---

## Key Outcomes

- Processed approximately **12.7 million** NYC taxi trip records.
- Built an end-to-end analytics pipeline using **Python, PostgreSQL, SQL, and Power BI**.
- Designed a **star schema** to support efficient analytical queries.
- Developed a **four-page interactive dashboard** with DAX measures and executive-level insights.
- Transformed raw operational data into actionable business intelligence.

---

## Dashboard Preview

The complete interactive Power BI dashboard is available from the **Releases** section of this repository.
Dashboard preview images are included below.

---

## Repository Structure

```
NYC-Taxi-Analytics-Platform/
│
├── data/
├── notebooks/
├── sql/
├── images/
├── powerbi/
├── requirements.txt
├── README.md
└── LICENSE
```

---

## How to Run

1. Clone the repository.
2. Install dependencies.
3. Execute the notebooks in order.
4. Load the cleaned dataset into PostgreSQL.
5. Run the SQL scripts.
6. Connect Power BI to PostgreSQL.
7. Refresh the dashboard.

---

## Key Skills Demonstrated

- Data Cleaning
- Exploratory Data Analysis
- Feature Engineering
- SQL Querying
- Data Warehousing
- Star Schema Design
- Power BI Dashboard Development
- DAX Measures
- Business Intelligence
- Data Visualization

---

## Future Improvements

- Real-time dashboard refresh
- Predictive demand forecasting
- Geospatial trip analysis
- Time-series forecasting
- Cloud deployment using Azure or AWS

---

## License

This project is licensed under the MIT License.
