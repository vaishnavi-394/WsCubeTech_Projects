Perfect 😎 Here’s your **final GitHub-ready, aesthetic & professional README.md** (without the folder structure part) — polished for portfolio use, with emojis, clean formatting, and modern badges 👇

---

# 🛍️ Myntra Sales Analysis using Advanced Excel

![Excel](https://img.shields.io/badge/Tool-Microsoft_Excel-green?logo=microsoftexcel\&logoColor=white)
![Power Query](https://img.shields.io/badge/Feature-Power_Query-blue?logo=microsoftpowerbi\&logoColor=white)
![Data Cleaning](https://img.shields.io/badge/Focus-Data_Cleaning-orange)
![Status](https://img.shields.io/badge/Project_Status-Completed-success)

---

## 📋 **Project Overview**

This project focuses on analyzing **Myntra’s sales dataset** using **Advanced Excel** and **Power Query**.
The goal was to clean, transform, and analyze raw data to uncover patterns in **discounts, prices, and product categories**, preparing the dataset for further analytics or dashboard use.

---

## 🎯 **Objectives**

✅ Clean and standardize the Myntra dataset using **Power Query Editor**
✅ Handle missing values in `DiscountPrice` and `DiscountOffer`
✅ Convert inconsistent offers (like “50% OFF”, “Rs.200 OFF”) into a single standardized format
✅ Apply **advanced Excel functions** for conditional analysis
✅ Derive category-wise insights to support better pricing and discount decisions

---

## 🧹 **Data Cleaning Workflow**

**Performed in Excel & Power Query:**

1. Removed duplicates and unnecessary fields
2. Standardized `DiscountOffer` format (converted all % OFF → Rs. OFF)
3. Replaced null `DiscountPrice` using **category-level averages**
4. Applied **Title Case** to product names
5. Trimmed spaces and corrected inconsistent text entries

---

## ⚙️ **Excel Functions Used**

| Function                                | Description                       |
| --------------------------------------- | --------------------------------- |
| `TRIM`, `PROPER`, `UPPER`               | Text formatting & standardization |
| `IF`, `IFERROR`, `ISBLANK`              | Conditional logic & null handling |
| `SEARCH`, `SUBSTITUTE`, `LEFT`, `RIGHT` | String extraction & conversion    |
| `AVERAGEIFS`, `COUNTIFS`, `SUMIFS`      | Multi-condition analysis          |
| `AND`, `OR`, `NOT`                      | Logical comparison                |
| `ROUND`, `VALUE`                        | Numeric precision & conversion    |
| `VLOOKUP`, `INDEX-MATCH`                | Lookup & referencing              |

---

## 🧮 **Sample Formulas**

### 🔹 Standardize Discount Offer

```excel
=IF(ISNUMBER(SEARCH("Rs.",[@DiscountOffer])),
   [@DiscountOffer],
   "Rs. " & ROUND((VALUE(SUBSTITUTE([@DiscountOffer],"%",""))/100)*[@[OriginalPrice (in Rs)]],0)
)
```

### 🔹 Identify Missing Discounts

```excel
=IF(AND(ISBLANK([@[DiscountPrice (in Rs)]]),ISBLANK([@DiscountOffer])),"Missing","Available")
```

### 🔹 Fill Missing Discount Prices with Category Average

```excel
=IF(
   OR(ISBLANK([@[DiscountPrice (in Rs)]]),[@[DiscountPrice (in Rs)]]=0),
   AVERAGEIFS([DiscountPrice (in Rs)],[Category],[@Category]),
   [@[DiscountPrice (in Rs)]]
)
```

---

## 📈 **Key Insights**

📊 **30–40% discounts** performed best in terms of potential customer interest
👗 **Women’s Fashion** category offered the most consistent discounts
⚡ Around **12% missing discount values** were imputed using category averages
💰 `Rs.`-based discounts performed better in **premium product categories**

---

## 🚀 **Skills Demonstrated**

* Advanced Excel Functions
* Power Query Data Cleaning
* Conditional & Logical Formulas
* Text Transformation and Value Extraction
* Category-wise Aggregation and Analysis

---

