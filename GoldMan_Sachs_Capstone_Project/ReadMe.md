# 🏦 Goldman Sachs Consumer Finance  
## End-to-End Credit Risk Analytics & Predictive Modeling

> Full-stack financial analytics project covering SQL intelligence, interactive Power BI dashboards, and machine learning models for credit approval and default prediction.

---

# 📌 Project Objective

Build a complete credit risk analytics system to:

- Evaluate loan portfolio health  
- Identify default risk drivers  
- Improve approval efficiency  
- Detect high-risk borrowers early  
- Support executive decision-making

---

# 🛠 Tech Stack

### 🔹 Data & BI
- SQL (MySQL Workbench)
- Power BI (6-page executive dashboard)

### 🔹 Machine Learning
- Python (Jupyter Notebook)
- Pandas
- NumPy
- Matplotlib
- Seaborn
- Scikit-learn

### 🔹 ML Models Used
- Logistic Regression
- Balanced Logistic Regression
- Decision Tree
- Random Forest

---

# 📊 Dataset Overview

- Customer demographics  
- Loan amount & funded amount  
- Interest rate  
- Loan grade (A–G)  
- Employment length  
- Home ownership  
- Repayment status  
- Loan purpose  
- Regional data

---

# 🔎 Phase 1 – Advanced SQL Risk Intelligence

## 📈 Portfolio Metrics Extracted

| Metric | Value |
|--------|-------|
| Overall Default Rate | **0.0044%** |
| Model Default Rate (Strict Definition) | **~6.6%** |
| Delinquency Rate | **8.69%** |
| Overall Repayment Rate | **28.25%** |
| Portfolio Stability Signal | **84.71%** |

---

## 🔍 Key SQL Insights

- Identified **unique customers by region**
- Calculated approval rate using:
  - `Fully Paid`
  - `Current`
- Computed default rate using:
  - `Default`
  - `Charged Off`
- Flagged high-risk borrowers using:
  - Low annual income
  - Loan grade C–G
  - High funded amount
- Performed state-level approval comparison
- Conducted year-over-year loan disbursement growth analysis
- Measured interest rate variation by category & region
- Identified repeated missed-payment customers

---

# 📊 Phase 2 – Power BI Executive Dashboard (6 Pages)

---

## 1️⃣ Loan Portfolio Overview

### KPIs:
- Total Loans Issued  
- Total Loan Amount Disbursed  
- Approval Rate  
- Default Rate  
- NPL Ratio  

### Key Findings:
- Default exposure extremely low at **0.0044%**
- Midwest region showed higher default sensitivity
- South region contributed higher volume exposure

---

## 2️⃣ Customer Risk Analysis

- Risk approximated via loan grade segmentation
- High-risk concentration in Grade C–G borrowers
- Created conditional performance flags:
  - 🟢 Strong
  - 🟡 Monitor
  - 🔴 High Risk

---

## 3️⃣ Loan Category Performance

### 💰 Revenue Distribution

| Loan Purpose | Revenue Share |
|--------------|--------------|
| Debt Consolidation | **64.52%** |
| Credit Card | 22.51% |
| Home Improvement | 6.4% |
| Others | <5% |
### Insight:
⚠ Portfolio revenue heavily concentrated in Debt Consolidation
### Insight:
⚠ Portfolio revenue heavily concentrated in Debt Consolidation
