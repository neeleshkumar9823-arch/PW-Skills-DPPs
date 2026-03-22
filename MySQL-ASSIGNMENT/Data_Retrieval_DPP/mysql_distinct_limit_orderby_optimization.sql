-- =========================================================
-- File Name   : mysql_distinct_limit_orderby_optimization.sql
-- Author      : Shivansh Singh
-- Description : Practical MySQL queries demonstrating DISTINCT,
--               LIMIT, ORDER BY, and Query Optimization concepts.
-- Database    : orders_db
-- =========================================================

/* =========================================================
   SECTION 1: PRACTICAL USE OF DISTINCT
   ========================================================= */

-- Q1. Unique Products
-- Objective: Retrieve all unique product names ordered by customers.
SELECT DISTINCT product_name
FROM orders;

-- Q2. Unique Products Ordered by Each Customer
-- Objective: Count distinct products ordered per customer.
SELECT 
    customer_id,
    COUNT(DISTINCT product_name) AS unique_product_count
FROM orders
GROUP BY customer_id;

-- Q3. Count of Distinct Products on the Platform
-- Objective: Get total number of unique products ordered.
SELECT 
    COUNT(DISTINCT product_name) AS total_unique_products
FROM orders;

-- Q4. Most Recent Distinct Products
-- Objective: Fetch top 3 most recently ordered distinct products.
SELECT DISTINCT product_name
FROM orders
ORDER BY order_date DESC
LIMIT 3;


/* =========================================================
   SECTION 2: COMBINING DISTINCT, LIMIT, AND ORDER BY
   ========================================================= */

-- Q1. Top 2 Distinct Products Ordered in the Last Month
SELECT DISTINCT product_name
FROM orders
WHERE order_date >= CURRENT_DATE - INTERVAL 1 MONTH
ORDER BY order_date DESC
LIMIT 2;

-- Q2. Distinct Products Ordered by a Specific Customer (Customer ID: 200)
SELECT DISTINCT product_name
FROM orders
WHERE customer_id = 200
ORDER BY order_date DESC
LIMIT 3;

-- Q3. Top 5 Most Ordered Products (Based on Distinct Orders)
SELECT 
    product_name,
    COUNT(DISTINCT order_id) AS total_orders
FROM orders
GROUP BY product_name
ORDER BY total_orders DESC
LIMIT 5;

-- Q4. Unique Orders Count per Product
SELECT 
    product_name,
    COUNT(DISTINCT order_id) AS order_count
FROM orders
GROUP BY product_name
ORDER BY order_count DESC;


/* =========================================================
   SECTION 3: QUERY OPTIMIZATION WITH DISTINCT AND INDEXING
   ========================================================= */

-- Index Recommendation for Performance Optimization
CREATE INDEX idx_orders_date_product
ON orders(order_date, product_name);

-- Optimized Query: Distinct Products Ordered in the Last Month
SELECT DISTINCT product_name
FROM orders
WHERE order_date >= CURRENT_DATE - INTERVAL 1 MONTH;


/* =========================================================
   SECTION 4: EXECUTION PLAN AND PERFORMANCE ANALYSIS
   ========================================================= */

-- Q1. Analyze Execution Plan for Popular Products (Last 30 Days)
EXPLAIN
SELECT 
    product_name,
    COUNT(*) AS total_orders
FROM orders
WHERE order_date >= CURRENT_DATE - INTERVAL 30 DAY
GROUP BY product_name
ORDER BY total_orders DESC
LIMIT 10;

-- Optimized Alternative Without Raw DISTINCT
SELECT 
    product_name
FROM orders
WHERE order_date >= CURRENT_DATE - INTERVAL 30 DAY
GROUP BY product_name
ORDER BY MAX(order_date) DESC
LIMIT 5;


/* =========================================================
   SECTION 5: REAL-WORLD SCENARIOS AND COMPLEX QUERIES
   ========================================================= */

-- Q1. Top 10 Most Recent Distinct Products
SELECT 
    product_name,
    MAX(order_date) AS last_order_date
FROM orders
GROUP BY product_name
ORDER BY last_order_date DESC
LIMIT 10;

-- Q2. Most Recent Customer per Product
SELECT 
    o.product_name,
    o.customer_id,
    o.order_date
FROM orders o
JOIN (
    SELECT 
        product_name,
        MAX(order_date) AS max_date
    FROM orders
    GROUP BY product_name
) t
ON o.product_name = t.product_name
AND o.order_date = t.max_date
ORDER BY o.order_date DESC
LIMIT 10;

-- =========================================================
-- END OF FILE
-- =========================================================
