# 🚖 NYC Taxi Business Analytics

### End-to-End Data Analytics Project using Python, SQL, Excel, and Power BI

---

## 📌 Project Overview

This project presents an end-to-end data analytics workflow on the New York City Yellow Taxi Trip dataset. The objective is to transform raw transportation data into meaningful business insights by applying data profiling, cleaning, feature engineering, exploratory data analysis (EDA), SQL-based analytics, and interactive dashboard development.

The project simulates a real-world business analytics scenario where large-scale trip data is processed to identify operational trends, passenger behavior, revenue patterns, and data quality issues. The final output consists of actionable insights supported by visualizations and an interactive Power BI dashboard.

---

## 🎯 Business Problem

Urban transportation services generate millions of trip records every month. However, raw operational data frequently contains missing values, duplicate records, inconsistent timestamps, invalid passenger counts, unrealistic fares, and incorrect trip distances.

Without proper data preparation, organizations cannot reliably answer important business questions such as:

- When is customer demand at its highest?
- Which payment methods are most commonly used?
- What factors influence trip revenue and tipping behavior?
- How does trip distance impact fare amount?
- What operational inefficiencies exist within the data?

This project builds a complete analytics pipeline to clean, analyze, and visualize the dataset, enabling data-driven decision making through meaningful business insights.

---

## 📂 Dataset

This project uses the **New York City Yellow Taxi Trip Records** dataset published by the NYC Taxi & Limousine Commission (TLC).

### Dataset Information

- Dataset: NYC Yellow Taxi Trip Records
- Time Period: January 2015
- Records Analyzed: ~12.7 Million Trips
- Source: NYC TLC

### Features Used

- Pickup & Drop-off DateTime
- Passenger Count
- Trip Distance
- Fare Amount
- Tip Amount
- Total Amount
- Payment Type
- Vendor ID
- Pickup & Drop-off Coordinates

### Data Quality Challenges

- Missing values
- Duplicate records
- Invalid passenger counts
- Negative trip durations
- Unrealistic trip distances
- Negative & zero fares
- Outlier trips
- Timestamp inconsistencies

---

## 🔄 Project Workflow

```text
Raw Dataset
      │
      ▼
Data Profiling
      │
      ▼
Data Cleaning
      │
      ▼
Feature Engineering
      │
      ▼
Exploratory Data Analysis
      │
      ▼
SQL Business Analysis
      │
      ▼
Power BI Dashboard
      │
      ▼
Business Insights
```

---

## 🛠 Tech Stack

| Category | Technologies |
|-----------|--------------|
| Programming | Python |
| Data Analysis | Pandas, NumPy |
| Visualization | Matplotlib, Seaborn |
| Business Intelligence | Power BI |
| Database | SQL |
| Spreadsheet | Microsoft Excel |
| Development | Jupyter Notebook, VS Code |
| Version Control | Git, GitHub |

---

## 📁 Project Structure

```text
NYC-TAXI-BUSINESS-ANALYTICS/
│
├── data/
│   ├── raw/
│   ├── cleaned/
│   └── lookup/
│
├── notebooks/
├── sql/
├── powerbi/
├── reports/
├── images/
├── src/
│
├── README.md
├── requirements.txt
└── .gitignore
```

---

## 📊 Key Analysis Performed

- Data Profiling & Quality Assessment
- Data Cleaning & Validation
- Feature Engineering
- Exploratory Data Analysis
- SQL-based Business Queries
- Revenue Analysis
- Passenger Trend Analysis
- Payment Method Analysis
- Trip Distance & Duration Analysis
- Interactive Power BI Dashboard

---

## 💡 Key Business Insights

The analysis focuses on identifying operational and business trends, including:

- Peak demand periods across different times
- Passenger travel behavior
- Distribution of payment methods
- Relationship between trip distance and revenue
- Fare and tipping patterns
- Data quality issues affecting operational reporting
- Revenue-driving trip characteristics

---

## 📈 Dashboard Preview

The Power BI dashboard provides an interactive view of:

- Revenue KPIs
- Trip Volume Trends
- Passenger Distribution
- Payment Method Analysis
- Distance & Duration Analysis
- Fare Analysis

> **Dashboard Preview**

*(Add a screenshot here once the dashboard is completed.)*

```text
images/dashboard_preview.png
```

---

## ▶️ How to Run

1. Clone the repository

```bash
git clone https://github.com/<your-username>/NYC-TAXI-BUSINESS-ANALYTICS.git
```

2. Install dependencies

```bash
pip install -r requirements.txt
```

3. Open the notebooks in Jupyter Notebook or VS Code.

4. Run the notebooks sequentially from Data Profiling to Dashboard Analysis.

---

## 🚀 Future Improvements

- Integrate multiple months of NYC Taxi data
- Develop predictive demand forecasting models
- Build automated ETL pipelines
- Deploy an interactive web dashboard
- Perform geospatial hotspot analysis

---

## 👤 Author

**Aashray Rakwal**

Mechanical Engineering Undergraduate | Delhi Technological University

Interested in Data Analytics, Business Intelligence, and Machine Learning.
