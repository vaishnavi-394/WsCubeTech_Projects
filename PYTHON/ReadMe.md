# 🛒 Super Market Billing System (Python)

## 📌 Project Overview
This project implements a **Super Market Billing System** using Python.  
The system simulates a real-world supermarket billing counter where a customer can purchase multiple items from different categories. It calculates prices, applies category-based discounts, and generates a clean, well-aligned itemized bill.

The program is interactive and handles real-time user input using loops and conditional statements.

---

## 🎯 Features
- Supports **multiple items** in a single transaction  
- Handles **multiple categories**:
  - Grocery
  - Vegetable
  - Skincare
- Applies **category-wise discounts** automatically  
- Generates a **properly aligned itemized receipt**
- Case-insensitive input handling
- Uses loops to continue billing until the user finishes

---

## 🗂 Categories & Discounts

| Category   | Discount |
|-----------|----------|
| Grocery   | 10% |
| Vegetable | 5% |
| Skincare  | 15% |

---

## 🧾 Billing Logic
1. The user selects a category.
2. The system displays available items/products.
3. The user enters:
   - Item / Product name
   - Brand (for skincare items)
   - Quantity
4. The system:
   - Fetches price from predefined dictionaries
   - Calculates item total
   - Applies category-wise discount
5. The user can add multiple items in a loop.
6. After completion, the system prints:
   - Itemized bill
   - Subtotal
   - Total discount
   - Final payable amount

---

## 🔁 Control Flow
- A **`while` loop** allows continuous item entry.
- **Conditional statements (`if / elif / else`)** are used for:
  - Category selection
  - Item and brand validation
  - Discount application
- Billing stops when the user chooses **no** for adding more items.

---

## 📄 Sample Output
item name qty price total
rice 1 50 45.00
facewash (mamaearth) 2 250 425.00
onion 2 35 66.50
subtotal: 620.00
discount: 83.50
final amount: 536.50

thank you for shopping with us!


---

## 🛠 Technologies Used
- **Python 3**
- Built-in modules:
  - `datetime`
  - `random`

---
## Key Learning Outcomes

Working with nested dictionaries

Using loops for continuous user input

Applying conditional logic for discounts

Formatting console output using fixed-width alignment

Handling case-insensitive input safely

---

# 🌸 Customer Review Sentiment Analysis (NLP Project)

![Python](https://img.shields.io/badge/Python-3.x-blue)
![NLP](https://img.shields.io/badge/NLP-Text%20Analysis-green)
![Status](https://img.shields.io/badge/Status-Completed-success)

---

## 📌 Project Overview

This project performs **end-to-end Sentiment Analysis on customer product reviews** using Natural Language Processing (NLP).

The objective is to transform unstructured review text into structured insights that reveal:

- Overall customer satisfaction  
- Key sentiment drivers  
- Relationship between ratings and textual sentiment  
- Operational improvement opportunities  

---

## 🛠️ Tech Stack

- **Python**
- **Selenium** – Web scraping automation
- **BeautifulSoup** – HTML parsing
- **Pandas** – Data cleaning & analysis
- **NLTK** – Text preprocessing
- **TextBlob** – Sentiment analysis
- **Matplotlib / Seaborn** – Visualization
- **WordCloud** – Keyword frequency visualization

---

## 📂 Dataset Summary

- **Total Cleaned Reviews:** 407  
- **Columns Used:**
  - `Names`
  - `Cities`
  - `Posted_On`
  - `Occasion`
  - `Ratings`
  - `Reviews`

### Data Cleaning Steps

- Removed duplicate reviews  
- Dropped rows with missing values  
- Converted text to lowercase  
- Removed punctuation and special characters  
- Tokenization  
- Stopword removal  
- Lemmatization  

---

## 🧠 Sentiment Analysis Methodology

Sentiment analysis was performed using **TextBlob**.

### Polarity Score Range
- `-1` → Very Negative  
- `+1` → Very Positive  

### Classification Rule

```python
if polarity >= 0.1:
    sentiment = "Positive"
else:
    sentiment = "Negative"
Each review was assigned:

Polarity score

Subjectivity score

Sentiment label

📊 Key Findings
1️⃣ Sentiment Distribution

Positive Reviews: 350 (~86%)

Negative Reviews: 57 (~14%)

Overall sentiment is strongly positive.

2️⃣ Rating vs Sentiment Correlation

Average Rating (Positive): 4.91

Average Rating (Negative): 4.86

Correlation between Rating & Polarity: 0.02

Insight:
There is almost no linear correlation between star ratings and textual sentiment.
Customers often provide high ratings even when mentioning minor complaints.

3️⃣ Review Length Analysis

Average Positive Review Length: ~4.9 words

Average Negative Review Length: ~3.5 words

Reviews are generally short and concise, limiting contextual richness.

4️⃣ Word Cloud Insights

Most frequently occurring themes:

Delivery

Time / Timely

Service

Fresh

Quality

Delivery performance appears to be the primary sentiment driver.

🚀 Business Recommendations

Improve delivery time consistency

Monitor delivery-related keywords for early dissatisfaction signals

Combine text sentiment analysis with numeric ratings for better insight

Highlight reliability and product quality in marketing efforts

🔮 Future Improvements

Compare results using VADER sentiment analysis

Implement multi-class sentiment (Positive / Neutral / Negative)

Apply Machine Learning classification models

Build an interactive dashboard for sentiment tracking

📎 How to Run
pip install -r requirements.txt
jupyter notebook
🏁 Conclusion

This project demonstrates how unstructured textual data can be transformed into actionable business intelligence using NLP techniques.

It highlights the importance of combining:

Quantitative ratings

Qualitative sentiment analysis

to gain a complete understanding of customer experience.
