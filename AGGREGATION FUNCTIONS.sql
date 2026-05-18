--AGGREGATE FUNCTIONS
--Find the total number of orders
SELECT
COUNT(*) AS total_nr_orders
FROM orders

--Find the total sales of all orders
SELECT
COUNT(*) AS total_nr_orders,
SUM(sales) AS total_sales
FROM orders

--Find the average sales of all orders
SELECT
COUNT(*) AS total_nr_orders,
SUM(sales) AS total_sales,
AVG(sales) AS avg_sales
FROM orders

--Find the highest sales of all orders
SELECT
COUNT(*) AS total_nr_orders,
SUM(sales) AS total_sales,
AVG(sales) AS avg_sales,
MAX(sales) AS highest_sales
FROM orders