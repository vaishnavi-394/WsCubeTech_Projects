# 🚴‍♀️ Jenson USA SQL Sales Analysis Project

## 📌 Project Overview

This project is an SQL-based retail sales analysis case study built on the Jenson USA database.

The goal of this project is to analyze product performance, customer spending behavior, staff efficiency, and store-level sales trends using structured SQL queries.

The analysis focuses on extracting meaningful **business insights** from relational retail data to support strategic decision-making.

---

## 🎯 Objectives

- Analyze store-wise product sales distribution
- Identify highest revenue-generating customers
- Evaluate staff sales performance
- Detect dead inventory (products never ordered)
- Understand pricing distribution patterns
- Identify cross-category purchasing behavior
- Derive actionable business growth insights

---

## 🗂️ Dataset Description

The database represents a retail bike store system and includes the following tables:

- brands
- categories
- customers
- order_items
- orders
- products
- staffs
- stores
- stocks

---

## 📊 Key Business Questions Solved

### 1️⃣ Which store sells the highest number of products?

- Baldwin Bikes leads in total sales volume.
- Outperforms Santa Cruz and Rowlett Bikes.

Insight:
Strong demand concentration at Baldwin Bikes store.

---

### 2️⃣ What is the cumulative sales trend over time?

- Cumulative sales increase steadily over time.
- Indicates consistent product demand and long-term growth stability.

---

### 3️⃣ Which products generate the highest sales per category?

- A small number of products dominate total category sales.
- Revenue is highly concentrated among top-performing SKUs.

---

### 4️⃣ Who is the highest spending customer?

- Customer ID: 10
- Total Spend: 3,780,159

Insight:
Revenue concentration risk due to dependency on a single high-value customer.

---

### 5️⃣ What is the highest priced product in each category?

- Premium product prices range from 429 to 41,699.
- Clear price differentiation across categories.

---

### 6️⃣ How many orders does each customer place per store?

- Some customers placed up to 3 orders at a single store.
- Indicates repeat purchasing behavior.

---

### 7️⃣ Which staff members have not made any sales?

- Staff IDs: 1, 4, 5, 10
- Total inactive staff: 4

Insight:
Possible underutilization or performance gaps.

---

### 8️⃣ Which staff members perform above average?

- Staff IDs: 2, 3, 6, 7
- Total above-average performers: 4

Insight:
High-performing core sales group identified.

---

### 9️⃣ What are the top 3 most sold products?

- Top 3 products sold approximately 290+ units each.
- Sales volume concentrated among limited SKUs.

---

### 🔟 Which products have never been ordered?

- Total products never ordered: 5

Insight:
Dead inventory candidates for:
- Discontinuation
- Repositioning
- Promotional bundling

---

### 1️⃣1️⃣ What is the median product price?

- Median Product Price: 74,999

Interpretation:
- 50% of products are priced below 74,999
- 50% of products are priced above 74,999
- Indicates mid-to-premium pricing structure

---

### 1️⃣2️⃣ Which customers purchased from all product categories?

- Only 1 customer (Customer ID: 9)

Insight:
Very limited full-category adoption.
Strong cross-selling opportunity exists.

---

## 🛠️ SQL Concepts Used

- SELECT
- GROUP BY
- HAVING
- INNER JOIN
- LEFT JOIN
- Subqueries
- CTE (Common Table Expressions)
- Window Functions
- RANK()
- EXISTS
- Aggregate Functions (SUM, COUNT, AVG)
- Median calculation using row numbering logic

---

## 📈 Strategic Recommendations

### 📦 Inventory Optimization
Focus stock planning on high-demand products.

### 👥 Customer Retention
Develop loyalty programs for high-spending customers.

### 👨‍💼 Sales Team Management
- Retrain or reallocate non-performing staff.
- Incentivize top performers.

### 🛒 Cross-Selling Strategy
Encourage multi-category purchases through bundling and recommendations.
---

## 🏁 Conclusion

This project demonstrates how SQL can be used beyond querying to:

- Identify revenue concentration
- Detect operational inefficiencies
- Optimize pricing strategy
- Improve inventory planning
- Support data-driven business decisions

SQL is not just about data extraction.
It is about transforming raw data into strategic intelligence.

---

