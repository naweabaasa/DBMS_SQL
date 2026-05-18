--JOINS
--Retrieve all data from customers and orders in two different results
/*
SELECT *
FROM customers

SELECT*
FROM orders*/

--INNER JOINS
/*Get all customers along with their orders, 
but only for customers who have placed an order*/
SELECT
	c.id,
	first_name,
	o.order_id,
	o.sales
FROM customers AS c
INNER JOIN orders AS o
ON c.id = o.customer_id


-- LEFT JOIN
/*Get all customers along with their orders, 
inlcuding those without orders*/
SELECT
	c.id,
	c.first_name,
	o.order_id,
	o.sales
FROM customers AS c
LEFT JOIN orders AS o
ON c.id = o.customer_id

/* Get all customers who haven't placed any order */
SELECT*
FROM customers AS c
LEFT JOIN orders AS o
ON c.id = o.customer_id
WHERE o.customer_id IS NULL

--RIGHT ANTI JOIN
/*Get all orders without matchinh customers*/
SELECT*
FROM customers AS c
RIGHT JOIN orders AS o
ON c.id = o.customer_id
WHERE c.id IS NULL

/* Find customers without orders and orders without customers */
SELECT*
FROM orders AS o
FULL JOIN customers AS C
ON c.id = o.customer_id
WHERE c.id IS NULL
OR o.customer_id IS NULL


/* Get all customers along with their orders, but only 
for customers who have placed an order
without using INNER JOIN */
SELECT*
FROM customers AS c
LEFT JOIN orders AS o
ON c.id = o.customer_id
WHERE o.customer_id IS NOT NULL


--CROSS JOIN
/* Generate all possible combinations of customers and orders */
SELECT*
FROM customers
CROSS JOIN orders
	