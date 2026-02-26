# 🚴 JensonUSA Retail Analytics | SQL-Driven Business Intelligence

## 📌 Project Overview
This project focuses on performing structured retail analytics using SQL on the JensonUSA sales dataset.  
The objective was to answer real-world business questions related to revenue concentration, customer value, product demand, and staff performance.

The goal was not just querying data — but translating retail metrics into actionable growth strategy.

---

## 🗂 Dataset Structure
The database included relational tables such as:

- stores
- staffs
- customers
- orders
- order_items
- products
- categories
- brands
- stocks

The analysis was performed using a normalized retail schema with multiple joins across transactional and master data tables.

---

## 🎯 Business Questions Addressed

- Which products generate the highest sales across categories?
- Who are the highest-spending customers?
- Which staff members perform above the average sales level?
- Which customers purchased from all product categories?
- Which products have never been ordered?
- How does customer ordering behavior impact business performance?

---

## 🔍 Key Insights & Findings

### 🏪 Store Performance
- **Baldwin Bikes leads in total sales volume**, outperforming other stores.
- Indicates stronger local demand and store-level performance advantage.

### 💰 Revenue Concentration
- Sales are highly concentrated within top-performing categories and products.
- The **Top 3 products sold 290+ units each**, driving major demand share.

### 👤 Customer Value Analysis
- **Customer ID 10 generated total spend of 3,780,159**, showing heavy revenue concentration.
- Only **1 customer purchased across all product categories**, indicating limited cross-category adoption.

### 📦 Product Performance
- Identified **5 products with zero orders**, potential candidates for discontinuation or repositioning.
- The **median product price is 74,999**, reflecting a mid-to-premium pricing structure.
- Each category contains premium products priced between **429 and 41,699**, showing clear price differentiation.

### 👥 Staff Performance
- **4 staff members (IDs 1, 4, 5, 10) recorded zero sales**, highlighting possible underutilization.
- 4 staff members performed above overall sales average, indicating strong individual contribution.

### 📈 Sales Trend Analysis
- Cumulative sales analysis shows steady growth patterns.
- Order frequency varies by store, with some customers placing up to 3 orders in a single location.

---

## 🛠 Technical Implementation

The project utilized advanced SQL concepts including:

- INNER JOIN / LEFT JOIN
- GROUP BY & HAVING
- Subqueries
- Window Functions
- RANK()
- EXISTS
- Cumulative Aggregations
- Sales & Revenue Calculations
- Median Price Computation

---

## 📊 Strategic Recommendations

- Double down on high-performing categories and products
- Introduce loyalty programs targeting high-spending customers
- Re-evaluate zero-demand products
- Improve sales team utilization strategy
- Increase cross-category marketing to improve customer lifetime value

---

## 🚀 Outcome

This project demonstrates the ability to:
- Translate raw retail data into strategic business insights
- Identify revenue concentration risks
- Evaluate product and staff performance
- Use SQL as a decision-making tool rather than just a querying language

---

## 📌 Author
**Vaishnavi Chakraborty**  
Aspiring Data Analyst | SQL | Power BI | Python | Business Intelligence
