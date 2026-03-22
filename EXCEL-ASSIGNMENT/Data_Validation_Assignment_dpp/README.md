# Excel Data Validation Assignment ✅

This assignment demonstrates how to use **Excel Data Validation, Conditional Formatting, Filters, and Cleaning tools** to ensure data accuracy and highlight important information.  
Each question is listed with the complete task and a concise explanation of the steps taken for the solution.

---

## 📘 Questions & Steps

### Q1: Restrict Quantity values to whole numbers between 1 and 10
**Question:** Apply Data Validation to restrict Quantity values to only whole numbers between 1 and 10.  
**Steps Taken:** Selected the Quantity column → Data Tab → Data Tools → Data Validation → set criteria to whole numbers between 1 and 10.

---

### Q2: Highlight Total Price values greater than $2000
**Question:** Highlight all "Total Price" values greater than $2000 in green using Conditional Formatting.  
**Steps Taken:** Selected Total Price column → Home Tab → Conditional Formatting → Highlight Cell Rules → Greater Than → entered 2000 → applied green fill.

---

### Q3: Remove duplicate records by Order ID
**Question:** Remove duplicate records where "Order ID" is the same.  
**Steps Taken:** Selected the entire table → Data Tab → Data Tools → Remove Duplicates → checked Order ID column → no duplicates found.

---

### Q4: Split Customer Name into First Name and Last Name
**Question:** The "Customer Name" column contains full names. Split them into "First Name" and "Last Name."  
**Steps Taken:** Inserted two new columns → typed first and last name for the first entry → used Flash Fill (Ctrl+E) to automatically split names for all rows.

---

### Q5: Highlight Electronics orders with Total Price > $1000
**Question:** Use Conditional Formatting to highlight rows where "Category" is "Electronics" and "Total Price" is greater than $1000.  
**Steps Taken:** Selected table range → Conditional Formatting → New Rule → Use Formula → entered `=AND($H2="Electronics",$K2>1000)` → applied highlight color.

---

### Q6: Filter dataset to show only North region orders
**Question:** Filter the dataset to show only orders from the "North" region.  
**Steps Taken:** Selected Region column → Home Tab → Sort & Filter → Filter → chose "North" → alternatively used shortcut Ctrl+Shift+L.

---

### Q7: Correct Quantity values containing text
**Question:** Some "Quantity" values contain text (e.g., "Five"). Find and correct these errors.  
**Steps Taken:** Used Find & Replace (Ctrl+H) to replace text with numeric values → recalculated Total Price using formula `=Quantity * Unit Price` → dragged formula down to update all rows.

---

### Q8: Identify customers with multiple orders
**Question:** Identify customers who placed multiple orders by checking duplicate "Customer Names."  
**Steps Taken:** Added helper column to count occurrences of Customer Name → flagged names appearing more than once → alternatively used PivotTable to count Customer Names → sorted counts descending to highlight customers with multiple orders.

---

## 🎯 Learning Outcomes
- Applied **data validation** to restrict input values.  
- Used **conditional formatting** to highlight important thresholds.  
- Removed duplicates to ensure data accuracy.  
- Split text into separate columns using **Flash Fill**.  
- Combined formulas with conditional formatting for advanced rules.  
- Filtered datasets for targeted analysis.  
- Corrected text errors in numeric fields.  
- Identified duplicate customers using helper columns and PivotTables.

---

### Author
Prepared by **Neelesh Kumar Pandey**  
Focus: Clarity, collaboration, and visual polish in technical learning.
