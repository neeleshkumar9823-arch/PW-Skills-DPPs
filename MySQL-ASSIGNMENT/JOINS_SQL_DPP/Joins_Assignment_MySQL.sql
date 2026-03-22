
/*
====================================================
SQL JOINS ASSIGNMENT
Retail Analytics – Multi-table JOIN Analysis
Author : Neelesh Kumar Pandey
Database : MySQL
MySQL Version : 8.0+
====================================================
*/

/*
----------------------------------------------------
TABLE STRUCTURE (ASSUMED)
----------------------------------------------------

Customers(CustomerID, CustomerName, City)
Orders(OrderID, CustomerID, OrderDate, Amount)
Payments(PaymentID, CustomerID, PaymentDate, Amount)
Employees(EmployeeID, EmployeeName, ManagerID)

Note:
- Some Orders contain unknown CustomerID values
- Some Customers may not have Orders or Payments
*/

/*
====================================================
QUESTION 1
Retrieve all customers who have placed at least one order.
Concept Used: INNER JOIN
====================================================
*/
SELECT DISTINCT c.CustomerID,
       c.CustomerName,
       c.City
FROM Customers c
INNER JOIN Orders o
    ON c.CustomerID = o.CustomerID;


/*
====================================================
QUESTION 2
Retrieve all customers and their orders, including
customers who have not placed any orders.
Concept Used: LEFT JOIN
====================================================
*/
SELECT c.CustomerID,
       c.CustomerName,
       o.OrderID,
       o.OrderDate,
       o.Amount
FROM Customers c
LEFT JOIN Orders o
    ON c.CustomerID = o.CustomerID;


/*
====================================================
QUESTION 3
Retrieve all orders and their corresponding customers,
including orders placed by unknown customers.
Concept Used: LEFT JOIN (Orders as base table)
====================================================
*/
SELECT o.OrderID,
       o.CustomerID,
       c.CustomerName,
       o.OrderDate,
       o.Amount
FROM Orders o
LEFT JOIN Customers c
    ON o.CustomerID = c.CustomerID;


/*
====================================================
QUESTION 4
Display all customers and orders, whether matched or not.
Concept Used: FULL OUTER JOIN (Simulated using UNION)
====================================================
*/
SELECT c.CustomerID,
       c.CustomerName,
       o.OrderID,
       o.Amount
FROM Customers c
LEFT JOIN Orders o
    ON c.CustomerID = o.CustomerID

UNION

SELECT c.CustomerID,
       c.CustomerName,
       o.OrderID,
       o.Amount
FROM Customers c
RIGHT JOIN Orders o
    ON c.CustomerID = o.CustomerID;


/*
====================================================
QUESTION 5
Find customers who have not placed any orders.
Concept Used: LEFT JOIN + NULL Filtering
====================================================
*/
SELECT c.CustomerID,
       c.CustomerName,
       c.City
FROM Customers c
LEFT JOIN Orders o
    ON c.CustomerID = o.CustomerID
WHERE o.OrderID IS NULL;


/*
====================================================
QUESTION 6
Retrieve customers who made payments but did not
place any orders.
Concept Used: LEFT JOIN + NULL Filtering
====================================================
*/
SELECT DISTINCT p.CustomerID
FROM Payments p
LEFT JOIN Orders o
    ON p.CustomerID = o.CustomerID
WHERE o.OrderID IS NULL;


/*
====================================================
QUESTION 7
Generate a list of all possible combinations between
Customers and Orders.
Concept Used: CROSS JOIN
====================================================
*/
SELECT c.CustomerName,
       o.OrderID
FROM Customers c
CROSS JOIN Orders o;


/*
====================================================
QUESTION 8
Show all customers along with order and payment
amounts in one consolidated table.
Concept Used: Multiple LEFT JOINs
====================================================
*/
SELECT c.CustomerID,
       c.CustomerName,
       o.Amount AS OrderAmount,
       p.Amount AS PaymentAmount
FROM Customers c
LEFT JOIN Orders o
    ON c.CustomerID = o.CustomerID
LEFT JOIN Payments p
    ON c.CustomerID = p.CustomerID;


/*
====================================================
QUESTION 9
Retrieve all customers who have both placed orders
and made payments.
Concept Used: Multiple INNER JOINs
====================================================
*/
SELECT DISTINCT c.CustomerID,
       c.CustomerName
FROM Customers c
INNER JOIN Orders o
    ON c.CustomerID = o.CustomerID
INNER JOIN Payments p
    ON c.CustomerID = p.CustomerID;


/*
====================================================
BONUS: Manager–Employee Reporting Structure
Concept Used: SELF JOIN
====================================================
*/
SELECT e.EmployeeName AS Employee,
       m.EmployeeName AS Manager
FROM Employees e
LEFT JOIN Employees m
    ON e.ManagerID = m.EmployeeID;

