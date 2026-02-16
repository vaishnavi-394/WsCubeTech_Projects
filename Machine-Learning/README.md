# 📌 Loan Approval Prediction using Machine Learning

## 📖 Project Overview

In modern financial institutions, loan approval decisions must be fast, accurate, and unbiased. Traditionally, these decisions relied on manual evaluation of applicant details such as income, credit score, and repayment history. However, manual processes can be inconsistent, slow, and prone to human bias.

This project builds a data-driven machine learning system to automate loan approval prediction based on applicant financial and credit-related features.

---

## 🎯 Problem Statement

The goal is to predict whether a loan application will be:

- **Approved (1)**
- **Rejected (0)**

The model uses historical applicant data including:

- Financial indicators (income, loan amount, assets)
- Credit score (CIBIL score)
- Loan term
- Asset values (residential, commercial, luxury, bank assets)

---

## 🗂 Dataset Description

The dataset contains the following key features:

- `income_annum`
- `loan_amount`
- `loan_term`
- `cibil_score`
- `residential_assets_value`
- `commercial_assets_value`
- `luxury_assets_value`
- `bank_asset_value`
- `loan_status` (Target Variable)

---

## 🛠 Technologies Used

- Python
- Pandas
- NumPy
- Matplotlib
- Seaborn
- Scikit-learn

---

## ⚙ Project Workflow

### 1️⃣ Data Preprocessing

- Cleaned column names
- Handled missing values
- Encoded categorical variables
- Standardized numerical features

### 2️⃣ Exploratory Data Analysis (EDA)

- Loan status distribution
- Income vs Loan amount visualization
- Correlation heatmap

### 3️⃣ Train-Test Split

- Stratified 80-20 split
- Preserved class distribution

### 4️⃣ Model Building

The following models were trained:

- Logistic Regression
- Decision Tree
- Random Forest

### 5️⃣ Model Evaluation

- Accuracy Score
- Confusion Matrix
- Precision
- Recall
- F1-Score
- ROC Curve
- AUC Score

### 6️⃣ Cross Validation

- 5-Fold Cross Validation for stability check

### 7️⃣ Hyperparameter Tuning

- GridSearchCV used to optimize Random Forest parameters

### 8️⃣ Overfitting Check

- Compared training and testing accuracy

### 9️⃣ Threshold Tuning

- Adjusted classification threshold to control approval strictness

### 🔟 Feature Importance Analysis

- Identified most influential features affecting approval decisions

---

## 📊 Key Insights

- Higher CIBIL scores increase approval probability
- Higher income improves loan approval chances
- Larger loan amounts relative to income increase rejection risk
- Random Forest performed best after tuning

---

## 💡 Business Impact

This solution enables:

- Faster loan decision-making
- Reduced human bias
- Improved risk assessment
- Scalable loan processing system

---

## 🚀 Future Improvements

- Deployment as web application
- Real-time API integration
- Advanced explainability using SHAP
- Fairness bias auditing

---

## 📌 Conclusion

The optimized Random Forest model provides a scalable, efficient, and data-driven solution for automated loan approval prediction.
