# Pizza-Sales-Analysis-using-SQL-Power-BI-Project

# Pizza Sales Analysis | SQL & Power BI
Project Overview

Pizza Sales Analysis is a data analytics project focused on analyzing pizza sales performance using MySQL and Power BI.

The project analyzes sales data for the period January 2015 to December 2015 to identify key sales indicators, revenue trends, category and size performance, and the best and worst-performing pizzas.

SQL was used for data analysis and extracting business insights, while Power BI was used to create an interactive dashboard for visualizing sales performance.


# Project Objective

Identify key sales performance indicators.
Analyze sales and revenue trends.
Analyze sales performance by pizza category.
Analyze sales performance by pizza size.
Identify the best-selling pizzas based on revenue, quantity, and orders.
Identify the worst-selling pizzas based on revenue, quantity, and orders.
Analyze daily and monthly order trends.
Create an interactive Power BI dashboard to present the findings.

# Business Questions

What are the total revenue, total orders, and total pizzas sold?
What is the average order value?
What is the average number of pizzas sold per order?
How do orders vary by day of the week?
How do orders vary by month?
Which pizza category generates the highest sales?
Which pizza size contributes the most to sales and orders?
Which pizzas are the top 5 sellers based on revenue?
Which pizzas are the top 5 sellers based on quantity?
Which pizzas are the top 5 sellers based on total orders?
Which pizzas are the bottom 5 sellers based on revenue?
Which pizzas are the bottom 5 sellers based on quantity?
Which pizzas are the bottom 5 sellers based on total orders?
Which pizza generates the highest revenue?
Which pizza has the lowest revenue and quantity?

# Dataset
Dataset Source
The dataset was obtained from GitHub.

# Time Period
January 2015 – December 2015

# Database Tables
The dataset consists of four tables:

Table	Description
orders - Contains order-level information such as Order id, date and time
order_details	- Contains individual pizza items associated with each order
pizzas	- Contains pizza-level information such as pizza size and price
pizza_types -	Contains pizza names, categories, and ingredients

# Database Relationship
The tables are connected through the order and pizza identifiers:
orders → order_details → pizzas → pizza_types

This relational structure was used to combine order, product, category, size, quantity, and pricing information for analysis.

# Data Preparation

The dataset was already cleaned before analysis.

Additional columns were created in Power Query to support time-based analysis, including:

order_day
day_number
Order_month

These columns were used to analyze sales and orders by day and month.

# Tools & Technologies
MySQL Workbench — SQL analysis
Power BI — Data visualization and dashboard development
Power Query — Data transformation and calculated columns
Microsoft Word — Project documentation
GitHub — Project repository and version management

# SQL Analysis
SQL was used to perform data exploration and extract key business insights.

SQL Concepts Used-
SELECT
FROM
JOIN
GROUP BY
ORDER BY
Subqueries
SUM()
COUNT()
DISTINCT
ROUND()
DAYNAME()
Date/month functions

# Key SQL Analyses

# Time-Based Analysis
Total orders by day
Total orders by month
Identification of highest-order days
Identification of highest-order months
# Category Analysis
Percentage of sales by pizza category
Total pizzas sold by category
Category-wise order performance
# Size Analysis
Percentage of sales by pizza size
Sales and order performance by pizza size
# Best Seller Analysis
Top 5 pizzas were identified based on:
Revenue
Quantity sold
Total orders
# Worst Seller Analysis
Bottom 5 pizzas were identified based on:
Revenue
Quantity sold
Total orders

# Power BI Dashboard

The Power BI report consists of two interactive dashboard pages.
# Page 1 — Sales Overview
The Sales Overview page provides a high-level view of overall pizza sales performance.
It includes:
Total Revenue
Average Order Value
Total Pizzas Sold
Total Orders
Average Pizzas Sold per Order
Daily order trends
Monthly sales trends
Category performance
Size-wise performance
# Page 2 — Best & Worst Sellers
This page focuses on product-level performance.
It provides analysis of:
Top 5 pizzas by revenue
Top 5 pizzas by quantity
Top 5 pizzas by total orders
Bottom 5 pizzas by revenue
Bottom 5 pizzas by quantity
Bottom 5 pizzas by total orders

# Power BI Visualizations

The dashboard uses the following visuals:
KPI Cards
Stacked Column Chart
Area Chart
Donut Chart
Funnel Chart
Stacked Bar Chart
Slicers
Buttons

Interactive slicers and buttons allow users to explore the sales data from different perspectives.

# Key Performance Indicators
KPI	Value
Total Revenue-	817,860.05
Total Orders-	21,350
Total Pizzas Sold-	49,574
Average Order Value-	38.31
Average Pizzas per Order-	2.32


# Key Business Insights
# Time-Based Insights
Friday records the highest number of orders among the days of the week.
Orders are highest on weekends.
July records the highest sales/orders.
May and August are also among the months with the highest number of orders.
# Category Insights
The Classic pizza category contributes the maximum sales and orders.
# Size Insights
Large-size pizzas contribute the maximum sales and orders.
# Best-Selling Pizzas
The Thai Chicken Pizza generates the highest revenue.
The Classic Deluxe Pizza has the highest quantity sold.
The Classic Deluxe Pizza also has the highest total number of orders.
# Worst-Selling Pizzas
The Brie Carre Pizza generates the minimum revenue.
The Brie Carre Pizza also has the lowest total quantity sold.

# Dashboard Preview

Sales Overview
<img width="1468" height="803" alt="image" src="https://github.com/user-attachments/assets/a2eed6a2-f54e-4981-ab3e-d8d198ede6f2" />

Best & Worst Sellers
<img width="1472" height="804" alt="image" src="https://github.com/user-attachments/assets/acf04c90-3a78-47a1-b3dc-ae88eb6cb209" />

📁 Repository Structure
Pizza-Sales-Analysis-Using-SQL-PowerBI/
│
├── SQL/
│   └── Pizza_Sales_Analysis_Using_SQL.sql
│
├── PowerBI/
│   └── PizzaCorner_Sales_Analysis.pbix
│
├── Dashboard/
│   ├── Sales_Overview.png
│   └── Best_Worst_Sellers.png
│
├── Dataset/
│   └── Pizza_Sales_Dataset.csv
│
├── Documentation/
│   └── PizzaCorner_Sales_Analysis_Report.docx
│
└── README.md

# Project Workflow
Raw Dataset
     ↓
Data Validation & Preparation
     ↓
MySQL Database
     ↓
SQL Data Analysis
     ↓
Power Query Transformations
     ↓
Power BI Data Model
     ↓
DAX / KPIs
     ↓
Interactive Dashboard
     ↓
Business Insights

# Skills Demonstrated
SQL Skills
-Data querying
-Relational table joins
-Aggregation
Grouping and sorting
Subqueries
Date-based analysis
Sales and revenue analysis
Top/Bottom-N analysis
# Power BI Skills
Data modeling
Power Query
KPI creation
Interactive dashboard development
Data visualization
Slicers and buttons
Business intelligence reporting
# Analytical Skills
Sales performance analysis
Revenue analysis
Product performance analysis
Category analysis
Trend analysis
Business insight generation

# Conclusion
The Pizza Sales Analysis project provides a comprehensive view of pizza sales performance throughout 2015.

The analysis identified key revenue and sales indicators, highlighted the strongest-performing pizza categories and sizes, and identified the best- and worst-performing individual pizzas.

The combination of SQL for data analysis and Power BI for interactive visualization demonstrates the ability to transform raw sales data into meaningful business insights that can support data-driven decision-making.
