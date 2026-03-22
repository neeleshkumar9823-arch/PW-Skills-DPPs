-- =========================================================
-- Assignment Name : SQL Functions
-- Author          : Shivansh Yadav
-- MySQL Version   : MySQL 8.0
-- =========================================================

/*
=========================================================
SECTION 1 : WORLD DATABASE QUERIES
=========================================================
*/
USE world;
-- Question 1
-- Find the country with the maximum population
SELECT 
    Name, 
    Population 
FROM country 
ORDER BY Population DESC 
LIMIT 1;


-- Question 2
-- Sum the populations of all cities per country
SELECT 
    c.Name AS country_name, 
    SUM(ci.Population) AS total_city_population
FROM country c
JOIN city ci 
    ON c.Code = ci.CountryCode
GROUP BY c.Name;


-- Question 3
-- Top 3 countries with the highest population density
SELECT 
    Name, 
    (Population / SurfaceArea) AS population_density
FROM country
WHERE SurfaceArea > 0
ORDER BY population_density DESC
LIMIT 3;



/*
=========================================================
SECTION 2 : SAKILA DATABASE QUERIES
=========================================================
*/
USE sakila;
-- Question 4
-- Customer who has the highest number of rentals
SELECT 
    customer_id, 
    COUNT(*) AS total_rentals
FROM rental
GROUP BY customer_id
ORDER BY total_rentals DESC
LIMIT 1;


-- Question 5
-- Month with the most rentals
SELECT 
    MONTH(rental_date) AS rental_month, 
    COUNT(*) AS total_rentals
FROM rental
GROUP BY rental_month
ORDER BY total_rentals DESC
LIMIT 1;


-- Question 6
-- Total revenue generated per day
SELECT 
    DATE(payment_date) AS payment_day, 
    SUM(amount) AS total_revenue
FROM payment
GROUP BY payment_day;


-- Question 7
-- Store that generated the highest total revenue
SELECT 
    s.store_id, 
    SUM(p.amount) AS total_revenue
FROM store s
JOIN staff st 
    ON s.store_id = st.store_id
JOIN payment p 
    ON st.staff_id = p.staff_id
GROUP BY s.store_id
ORDER BY total_revenue DESC
LIMIT 1;


-- Question 8
-- Customers who have made exactly 5 payments
-- NOTE: In the standard Sakila dataset, this query returns NO ROWS
-- because no customer has exactly 5 payments.

SELECT 
    COUNT(*) AS customers_with_5_payments
FROM (
    SELECT customer_id
    FROM payment
    GROUP BY customer_id
    HAVING COUNT(*) = 5
) t;

-- =========================================================
-- END OF FILE
-- =========================================================
