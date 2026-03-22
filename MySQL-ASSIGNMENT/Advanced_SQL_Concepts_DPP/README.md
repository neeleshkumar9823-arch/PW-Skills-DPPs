# 🔗 Advanced SQL Concepts – Window Functions Assignment

📌 A **MySQL-based SQL assignment** focused on applying **advanced window functions**
to analyze **employee salaries, departmental rankings, running totals, and distributions**
using a **corporate HR dataset**.

🎯 Designed to demonstrate **real-world analytical SQL thinking**
required for **Data Analyst and Data Science** entry-level roles.

---

## 🎯 Objectives

✅ Understand SQL Window Function syntax  
✅ Apply ROW_NUMBER, RANK, DENSE_RANK  
✅ Perform department-wise analysis  
✅ Calculate running totals and moving averages  
✅ Analyze salary distributions  
✅ Compare employee salaries against department averages  
✅ Combine multiple tables for ranking logic  
✅ Write clean, structured, interview-ready SQL  

---

## 🛠️ Tech Stack

🗄️ **Database:** MySQL  
📜 **Language:** SQL  
⚙️ **MySQL Version:** 8.0+  
📈 **Level:** Intermediate  

---

## 📂 What’s Inside

| 🔹 Section | 📄 Description |
|-----------|---------------|
| 👨‍💼 Employees Table | Employee salary & hire data |
| 🏢 Departments Table | Department metadata |
| 🔢 Ranking Functions | ROW_NUMBER, RANK, DENSE_RANK |
| 📊 Aggregations | Running totals & moving averages |
| 📈 Distributions | CUME_DIST salary analysis |
| 🧮 Comparisons | Salary vs department average |
| 🔗 JOIN Operations | Employee + Department ranking |
| 🧠 Window Frames | RANGE vs ROWS behavior |

---

## ▶️ How to Run

1️⃣ Open **MySQL Workbench** or any MySQL client  
2️⃣ Create tables: `employees`, `departments`  
3️⃣ Insert dataset values as provided  
4️⃣ Open `Advanced_SQL_Concepts_Assignment_Final.sql`  
5️⃣ Execute queries **section-wise** for clarity  

---

## 📊 Final Output (Expected State)

📁 After execution, the queries return:

* Employees ranked by salary  
* Department-wise employee rankings  
* Running total of salaries by hire date  
* Salary difference from department maximum  
* 3-period moving average of salaries  
* Cumulative salary distribution  
* Last hired employee per department  
* Employees earning above department average  
* Consolidated employee + department ranking  

⚠️ Some result sets may include **NULL values**
— this is **expected behavior** in window function analysis.

---

## 🧠 Key Takeaways

💡 Learn when to use ROW_NUMBER vs RANK vs DENSE_RANK  
💡 Understand window frames (ROWS vs RANGE)  
💡 Perform analytical calculations without GROUP BY  
💡 Compare row-level values with aggregates  
💡 Think in terms of **business insights**, not just SQL  
💡 Write production-quality analytical queries  

---

## ⚠️ Notes (Important)

⚙️ Requires **MySQL 8.0+** (window functions unsupported in older versions)  
🚫 No schema modifications beyond table creation  
📘 This is an **analysis-focused assignment**, not CRUD  
🧪 Output depends on salary distribution and hire dates  

---

## 👤 Author

👨‍💻 **Neelesh Kumar Pandey**  
📊 Data Analyst / Aspiring Data Scientist  

---
