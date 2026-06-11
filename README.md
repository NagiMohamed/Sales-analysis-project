# Sales-analysis-project
# Sales Analytics Project

## Overview

This project demonstrates an end-to-end sales analytics workflow using SQL, Excel, and Power BI. The project covers database design, data analysis, KPI reporting, and dashboard development to generate business insights from sales data.

## Tools Used

* SQL Server
* Microsoft Excel
* Power BI

---

## Database Design

The database consists of three related tables:

### Customers

* Customer ID
* Customer Name
* City

### Products

* Product ID
* Product Name
* Category
* Price

### Orders

* Order ID
* Customer ID
* Product ID
* Quantity
* Order Date

Relationships were established using primary and foreign keys to maintain data integrity.

---

## SQL Analysis

The following analytical queries were developed:

### 1. Order Details Analysis

Joined customers, orders, and products tables to generate transaction-level sales details and calculate total transaction value.

**Techniques Used**

* LEFT JOIN
* Calculated Columns

### 2. Customer Spending Analysis

Calculated total spending for each customer and ranked customers based on purchase value.

**Techniques Used**

* GROUP BY
* SUM()
* RANK() Window Function

### 3. Product Performance Analysis

Analyzed product sales performance by calculating:

* Total Quantity Sold
* Total Revenue
* Product Ranking by Revenue

**Techniques Used**

* Common Table Expressions (CTEs)
* Aggregations
* RANK() Window Function

### 4. Monthly Revenue Trend Analysis

Calculated monthly revenue and generated cumulative sales using a running total.

**Techniques Used**

* CTEs
* DATEPART()
* Window Functions
* Running Totals

---

## Excel Analysis

Created an Excel dashboard to:

* Summarize sales performance
* Visualize product and customer trends
* Present KPIs using Pivot Tables and Charts

---

## Power BI Dashboard

Developed an interactive Power BI dashboard featuring:

### KPIs

* Total Sales
* Total Quantity Sold
* Order Count
* Average Order Value

### Visualizations

* Sales by Category
* Sales by City
* Sales by Product
* Sales Trend Over Time

### Filters

* Category
* City
* Order Date

---

## Key Business Insights

* Electronics generated the highest revenue among product categories.
* Laptop was the top-performing product by sales value.
* Cairo contributed the highest sales revenue among all cities.
* Sales performance can be tracked over time through monthly trend analysis.

---

## Skills Demonstrated

* SQL Database Design
* Data Modeling
* Joins and Relationships
* Aggregation Functions
* Window Functions
* Common Table Expressions (CTEs)
* Excel Reporting
* Power BI Dashboard Development
* KPI Design and Analysis

---

## Project Files

- SalesProject.sql
- Sales_Data.xlsx
- Sales Analysis.pbix
- README.md

---

## Dashboard Preview

### Power BI Dashboard

![Power BI Dashboard 1](/Image/powerbi_dashboard_1.png)

![Power BI Dashboard 2](/Image/powerbi_dashboard_2.png)

### Excel Dashboard

![Excel Dashboard](/Image/Excel_dashboard.png)

---

## Contact

LinkedIn: https://www.linkedin.com/in/nagi-mohamed-758662263/

GitHub: https://github.com/NagiMohamed/Sales-analysis-project/blob/main/README.md

