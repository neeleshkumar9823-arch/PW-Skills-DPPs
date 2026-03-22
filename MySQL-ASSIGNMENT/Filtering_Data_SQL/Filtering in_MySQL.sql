
/*
====================================================
DA – Session 24 DPP
Sales Transaction Dataset
Author : Shivansh Yadav
Database : MySQL
MySQL Version : 8.0+
====================================================
*/

-- -------------------------------------------------
-- Assumed Table Name: sales_transactions
-- Columns:
-- transaction_id | transaction_date | category
-- amount | payment_method | region
-- -------------------------------------------------

/*
====================================================
1. Basic Filtering with WHERE
Question:
Write a query to find all transactions where the
amount is greater than $1000.
====================================================
*/
SELECT *
FROM sales_transactions
WHERE amount > 1000;


/*
====================================================
2. Using Logical Operators (AND, OR)
Question:
Find all transactions in the Electronics category
where the amount is more than $500.
====================================================
*/
SELECT *
FROM sales_transactions
WHERE category = 'Electronics'
  AND amount > 500;


/*
====================================================
3. Filtering with Date Conditions
Question:
Retrieve all transactions that occurred after
March 1, 2024.
====================================================
*/
SELECT *
FROM sales_transactions
WHERE transaction_date > '2024-03-01';


/*
====================================================
4. Handling Multiple Conditions
Question:
Find transactions where the amount is between
$500 and $1000 AND the category is Furniture.
====================================================
*/
SELECT *
FROM sales_transactions
WHERE amount BETWEEN 500 AND 1000
  AND category = 'Furniture';


/*
====================================================
5. Using NULL Filtering
Question:
If some transactions have missing payment
methods, find those transactions.
====================================================
*/
SELECT *
FROM sales_transactions
WHERE payment_method IS NULL;


/*
====================================================
6. Sorting Results with ORDER BY
Question:
Retrieve all transactions sorted by amount in
descending order.
====================================================
*/
SELECT *
FROM sales_transactions
ORDER BY amount DESC;


/*
====================================================
7. Counting Transactions per Category (GROUP BY)
Question:
Find the number of transactions in each category.
====================================================
*/
SELECT category,
       COUNT(*) AS transaction_count
FROM sales_transactions
GROUP BY category;


/*
====================================================
8. Using HAVING to Filter Aggregated Data
Question:
Retrieve categories that have more than
3 transactions.
====================================================
*/
SELECT category,
       COUNT(*) AS transaction_count
FROM sales_transactions
GROUP BY category
HAVING COUNT(*) > 3;


/*
====================================================
9. Finding the Total Revenue per Region
Question:
Calculate the total sales amount per region,
displaying only regions where total sales
exceed $3000.
====================================================
*/
SELECT region,
       SUM(amount) AS total_sales
FROM sales_transactions
GROUP BY region
HAVING SUM(amount) > 3000;


/*
====================================================
10. Advanced Query: Filtering High-Value
Transactions with Aggregates
Question:
Find the regions where the average transaction
amount is greater than $800, but only for
categories that have more than 3 transactions.
====================================================
*/
SELECT region
FROM sales_transactions
GROUP BY region, category
HAVING AVG(amount) > 800
   AND COUNT(*) > 3;

