# 🎧 Audible Data Cleaning Case Study

## 📖 Project Overview
This case study focuses on cleaning and standardizing an **Audible Audiobook dataset** using **Power Query Editor in Excel**.  
The goal was to transform messy, inconsistent data into a structured and analysis-ready format for further visualization or business insights.

---

## 🧩 Dataset Description
The dataset consists of multiple attributes related to audiobooks available on Audible:

| Column Name | Description |
|--------------|-------------|
| **name** | Title of the audiobook |
| **author** | Name(s) of the author(s) |
| **narrator** | Person(s) who narrated the audiobook |
| **time** | Total listening duration |
| **releasedate** | Date when the audiobook was released |
| **language** | Language of narration |
| **stars** | Star rating and number of ratings combined |
| **price** | Price of the audiobook |

---

## 🎯 Objective
To clean, standardize, and prepare the dataset for analysis by:
- Ensuring consistent formatting across all text-based fields.
- Splitting combined fields (e.g., separating ratings and number of ratings).
- Standardizing dates, durations, and numeric values.
- Detecting and handling multiple authors.
- Improving overall data quality for better insights.

---

## 🛠 Tools & Technologies Used
- **Microsoft Excel**
- **Power Query Editor**
- **Data Cleaning & Transformation Techniques**

---

## 🔍 Data Cleaning Workflow

### 1. Initial Data Assessment
- Reviewed the raw dataset for structural inconsistencies.
- Identified missing values, redundant prefixes, and inconsistent text formats.

### 2. Column-Wise Cleaning & Standardization

#### 🏷 Name Column
- Converted all titles to **Title Case** using Power Query (`Transform → Format → Capitalize Each Word`).
- Removed extra spaces and special characters for uniformity.

#### ✍️ Author Column
- Removed the prefix `Writtenby:` to extract clean author names.
- Detected rows with **multiple authors** using delimiters like `,`, `&`, and `and`.
- Standardized casing and spacing for consistent readability.

#### 🎙 Narrator Column
- Removed the prefix `Narratedby:`.
- Applied consistent title casing for all narrators.

#### ⏰ Time Column
- Standardized the duration format (e.g., “2 hrs and 20 mins” → “2h 20m”).
- Converted durations into numeric form for potential analysis.

#### 📅 Release Date Column
- Ensured all dates followed a consistent format (`DD-MM-YYYY`).

#### 🌐 Language Column
- Verified and standardized text (e.g., all “english”, “ENGLISH” → “English”).

#### ⭐ Stars Column
- Split the combined field (`5 out of 5 stars 34 ratings`) into:
  - **Average Rating:** 5.0  
  - **Total Ratings:** 34

#### 💰 Price Column
- Converted all price values into numeric data type for analysis.

---

## ⚙️ Transformation & Data Modeling
- Trimmed unnecessary spaces using `Transform → Format → Trim`.
- Applied `Clean` function to remove non-printable characters.
- Verified column data types (Text, Date, Decimal Number) before loading.
- Loaded the cleaned dataset back into Excel for further analysis.

---

## ✅ Final Outcome
- A **fully cleaned, structured, and analysis-ready dataset**.
- Consistent title casing, formatting, and column organization.
- Clear distinction between single and multiple authors.
- Improved readability and usability for analysis or visualization.

---

## 📊 Key Learnings
- Importance of data standardization before analysis.
- Hands-on understanding of Power Query transformations.
- Efficient ways to clean and format text-heavy datasets.
- Realization that *data preparation is 80% of the analysis process*.

---

## 🙏 Acknowledgment
A special thanks to my mentor **Ayushi Ma’am** for her constant guidance and support throughout this project.  
Her feedback helped refine my approach and understand the importance of meticulous data cleaning.

---


