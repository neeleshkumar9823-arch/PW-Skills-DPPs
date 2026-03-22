# Excel Lookup Functions Assignment 🔍

This assignment demonstrates how to use **Excel lookup functions** (`VLOOKUP`, `HLOOKUP`, `XLOOKUP`, `INDEX-MATCH`) to search, retrieve, and validate data.  
Each question explains **what the formula does, why it is used, and the goal achieved**.

---

## ✅ Questions & Explanations

### Q1: Find the Price of Product with ID 25
- **What it does:** Searches for Product ID in the first column and returns its Price.  
- **Why:** `VLOOKUP` is ideal when data is vertical and ID is the key.  
- **Goal:** Retrieve the price of a specific product using its ID.  
- **Generic Example:** `=VLOOKUP(ProductID, TableRange, PriceColumn, ExactMatch)`

---

### Q2: Find the Stock for "Product_50"
- **What it does:** Looks up Product Name and returns Stock value.  
- **Why:** `VLOOKUP` works when the name is the lookup key.  
- **Goal:** Find how many units are available for a product.  
- **Generic Example:** `=VLOOKUP(ProductName, TableRange, StockColumn, ExactMatch)`

---

### Q3: Supplier of Product with Highest Price
- **What it does:** Finds the maximum price in the Price column and returns the Supplier.  
- **Why:** `VLOOKUP` combined with `MAX` helps identify the supplier of the most expensive product.  
- **Goal:** Know who supplies the costliest item.  
- **Generic Example:** `=VLOOKUP(MAX(PriceRange), PriceRange:SupplierRange, SupplierColumn, ExactMatch)`

---

### Q4: Category of Product with Lowest Stock
- **What it does:** Finds the minimum stock value and returns the Category.  
- **Why:** `XLOOKUP` allows direct column-to-column matching.  
- **Goal:** Identify which category has the least stock.  
- **Generic Example:** `=XLOOKUP(MIN(StockRange), StockRange, CategoryRange)`

---

### Q5: Check if Supplier_C supplies Electronics
- **What it does:** Matches two conditions (Category = Electronics AND Supplier = Supplier_C).  
- **Why:** `INDEX-MATCH` can handle multiple criteria, unlike simple VLOOKUP.  
- **Goal:** Confirm if Supplier_C supplies any Electronics product.  
- **Generic Example:** `=INDEX(ProductRange, MATCH(1,(CategoryRange="Electronics")*(SupplierRange="Supplier_C"),0))`

---

### Q6: Check if any product has Stock < 100  
Here are three approaches:

1. **Yes/No check**  
   `=IF(VLOOKUP(A16,A:E,5,FALSE)<100,"Yes","No")`  
   - Checks if stock <100 → returns "Yes" or "No".

2. **Return Product Name if condition met**  
   `=IF(VLOOKUP(A16,A:E,5,FALSE)<100,VLOOKUP(15,A:E,2,FALSE),"No")`  
   - If stock <100 → returns Product Name, else "No".

3. **Inline check with Product Name**  
   `=IF(VLOOKUP(A2,$A$2:$F$101,5,FALSE)<100,B2,"No")`  
   - Directly shows product name from same row if stock <100, else "No".

👉 **In short:**  
- Formula 1 → Simple Yes/No.  
- Formula 2 → Yes/No with product name from another row.  
- Formula 3 → Inline check returning product name from same row.

---

### Q7: Retrieve Price from Second Row using HLOOKUP
- **What it does:** Searches horizontally across a row to return Price.  
- **Why:** `HLOOKUP` is used when data is arranged in rows instead of columns.  
- **Goal:** Extract price from a horizontal dataset.  
- **Generic Example:** `=HLOOKUP(LookupValue, RowRange, RowNumber, ExactMatch)`

---

### Q8: Find Product Name with ID 99 using INDEX-MATCH
- **What it does:** Finds Product ID in one column and returns the Name from another.  
- **Why:** `INDEX-MATCH` is more flexible than VLOOKUP, especially when the lookup column isn’t the first.  
- **Goal:** Get product name using its ID.  
- **Generic Example:** `=INDEX(NameRange, MATCH(ProductID, IDRange,0))`

---

## 🎯 Learning Outcomes
- Use lookup functions to **search by ID or Name**.  
- Apply **MAX/MIN with lookups** for highest/lowest values.  
- Combine **IF with VLOOKUP** for conditional checks.  
- Handle **multi-criteria lookups** with INDEX-MATCH.  
- Understand differences between **VLOOKUP (vertical), HLOOKUP (horizontal), XLOOKUP (flexible), INDEX-MATCH (advanced)**.

---

### Author
Prepared by **Shivansh Yadav (Venom-Shivu)**  
Focus: Clarity, collaboration, and visual polish in technical learning.