🛒 E-Commerce Sales KPI Analysis (SQL + Power BI)
📌 Project Overview

This project analyzes an E-Commerce marketplace dataset to identify key business insights related to sales performance, customer behavior, product trends, and delivery efficiency.

The analysis was performed using SQL Server for data cleaning and transformation and Power BI for KPI analysis and interactive dashboards.

The goal of this project is to demonstrate real-world Data Analyst skills, including:

Data Cleaning

Data Transformation

SQL Querying

KPI Analysis

Data Visualization

Business Insights Generation

📊 Business Problem

E-commerce companies need to understand their data to answer important questions such as:

Which product categories generate the most revenue?

How are sales growing over time?

Are customers returning to make repeat purchases?

Which products have the highest value?

Are orders being delivered on time?

This project analyzes the dataset to answer these business questions.

📂 Dataset Information

The dataset consists of 9 CSV files representing different aspects of the marketplace.

File Name	Description
customers.csv	Customer information
orders.csv	Order details
order_items.csv	Products included in each order
products.csv	Product details
sellers.csv	Seller information
payments.csv	Payment information
reviews.csv	Customer reviews
geolocation.csv	Location data
category_translation.csv	Product category translation

These files were imported into SQL Server to build a relational data model.

⚙️ Tools & Technologies Used

SQL Server

Data Cleaning

Data Transformation

Query Analysis

Power BI

Dashboard creation

KPI visualization

Business insight generation

GitHub

Project documentation

Version control

🗄️ Database Schema

The dataset was structured into a relational model using the following key tables:

Customers

Orders

Order Items

Products

Sellers

Payments

Reviews

Relationships were created using primary keys and foreign keys to enable analysis.

Example relationship:

Customers → Orders → Order_Items → Products
🔍 SQL Analysis Performed

The following SQL operations were performed during analysis:

Data Preparation

Importing CSV files into SQL Server

Checking for missing values

Data type conversion

Removing duplicates

Data Analysis Queries

Some of the key SQL queries performed include:

1️⃣ Total Revenue Calculation

2️⃣ Revenue by Product Category

3️⃣ Monthly Sales Trend

4️⃣ Average Product Price by Category

5️⃣ Top Selling Product Categories

6️⃣ Number of Orders per Customer

7️⃣ Repeat vs New Customers

8️⃣ Delivery Delay Analysis

9️⃣ Payment Method Distribution

These queries helped prepare the data used in Power BI dashboards.

📈 KPI Analysis

The project focuses on analyzing important Key Performance Indicators (KPIs) such as:

KPI	Description
Total Revenue	Total sales generated
Total Orders	Number of orders placed
Average Order Value	Average revenue per order
Customer Count	Total number of customers
Repeat Customers	Customers who placed multiple orders
Delivery Delay Rate	Percentage of delayed deliveries

These KPIs provide insights into business performance and operational efficiency.

📊 Power BI Dashboard

The Power BI dashboard provides interactive visualizations including:

Sales Trend Over Time

Revenue by Product Category

Top Selling Categories

Customer Purchase Behavior

Delivery Delay Analysis

The dashboard helps stakeholders quickly understand key business metrics.

💡 Key Business Insights
1️⃣ Top Revenue Categories

Categories such as Health & Beauty, Watches & Gifts, and Bed & Bath Table generated the highest revenue, indicating strong customer demand in these segments.

2️⃣ Sales Growth Trend

Sales increased steadily from 2017 to early 2018, suggesting rapid growth of the marketplace during this period.

3️⃣ Customer Retention Opportunity

Only a small percentage of customers made repeat purchases, highlighting a potential opportunity to improve customer retention strategies.

4️⃣ High Value Product Segments

Categories like Computers and Home Appliances showed the highest average product price, contributing significantly to revenue.

5️⃣ Delivery Performance

Some orders were delivered after the estimated delivery date, suggesting possible improvements needed in logistics and supply chain operations.

```📁 Project Structure
Ecommerce-KPI-Analysis
│
├── datasets
│   ├── customers.csv
│   ├── orders.csv
│   ├── order_items.csv
│   ├── products.csv
│   ├── sellers.csv
│   ├── payments.csv
│   ├── reviews.csv
│   ├── geolocation.csv
│   └── category_translation.csv
│
├── sql_queries
│   └── analysis_queries.sql
│
├── powerbi_dashboard
│   └── ecommerce_dashboard.pbix
│
└── README.md
```
🚀 How to Run This Project

1️⃣ Import CSV files into SQL Server

2️⃣ Execute the SQL queries provided in the sql_queries folder

3️⃣ Connect Power BI to SQL Server

4️⃣ Load the cleaned tables

5️⃣ Build or view the dashboard

📌 Skills Demonstrated

SQL Data Analysis

Data Cleaning & Transformation

KPI Analysis

Data Visualization

Business Insight Generation

Data Storytelling

👨‍💻Shrusti

B.Tech Computer Science Student
Aspiring Data Analyst
