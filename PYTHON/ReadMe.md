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
