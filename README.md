# Task 3: SQL for Data Analysis

## 📌 Overview

This repository contains all SQL queries, outputs, and documentation for **Task 3: SQL for Data Analysis** as part of the Data Analyst Internship assignment.

The task focuses on learning how to work with SQL using **SQLite**, including:

* Data extraction
* Joins
* Filtering
* Grouping & Aggregations
* Subqueries
* Views
* Query optimization (indexes)

---

## 📂 Repository Structure

```
├── dataset/                # (Optional) Any sample dataset if used
├── screenshots/            # Output screenshots from SQLite Online
├── task3_sql_queries.sql   # All SQL queries used for the task
└── README.md               # Documentation (this file)
```

---

## 🛠 Tools Used

* **SQLite Online**

  * [https://sqliteonline.com/](https://sqliteonline.com/)
  * [https://extendsclass.com/sqlite-browser.html](https://extendsclass.com/sqlite-browser.html)
  * [https://inloop.github.io/sqlite-viewer/](https://inloop.github.io/sqlite-viewer/)

---

## 📄 SQL Tasks Completed

### 1️⃣ Create Tables & Insert Data

Created sample tables (**users**, **orders**) to simulate an ecommerce environment.

### 2️⃣ WHERE vs HAVING

Demonstrated filtering before and after aggregation.

### 3️⃣ Joins

Used:

* `INNER JOIN`
* `LEFT JOIN`
* (RIGHT JOIN alternative since SQLite doesn't support RIGHT JOIN)

### 4️⃣ ARPU (Average Revenue Per User)

Calculated using nested queries.

### 5️⃣ Subqueries

Used subqueries for advanced filtering.

### 6️⃣ Views

Created a view for user-wise spending analysis.

### 7️⃣ Handling NULL Values

Used `IFNULL()` to replace `NULL` values.

### 8️⃣ Query Optimization

Created indexes for faster performance.

---

## ▶ How to Run the SQL Code

1. Open any SQLite Online tool.
2. Copy the contents of `task3_sql_queries.sql`.
3. Paste and execute.
4. Capture screenshots of outputs and add them to the `screenshots/` folder.

---
