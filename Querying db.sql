-- QUERY DATA(SELECT)
-- Retrieving all customer data
SELECT*
FROM customers

/*
-- Retrieve all order data
SELECT*
FROM orders


-- Retrieving each customer's name, country and score
SELECT 
	first_name,
	country,
	score
FROM customers


-- (WHERE) Retrieve customers with a score not equal to 0
SELECT*
FROM customers
WHERE score != 0

-- (WHERE) Retrieving customers from Germany
SELECT*
FROM customers
WHERE country = 'Germany'


-- (ORDER) Retrieve all customers and sort all the results by the highest score first
SELECT*
FROM customers 
ORDER BY score DESC

-- (ORDER) Retrieve all customers and sort all the results by the highest score first
SELECT*
FROM customers 
ORDER BY score ASC  

-- (NESTED ORDER BY)Retrieve all customers and sort all the results by the country and then by the highest score first

SELECT*
FROM customers 
ORDER BY country ASC, score DESC 

-- (GROUP BY) Retrieve the total score for each country
SELECT
	country,
	SUM(score) AS total_score
FROM customers 
GROUP BY country 



-- (GROUP BY) Retrieve the total score and total number of customers for each country
SELECT
	country,
	SUM(score) AS total_score,
	COUNT(id) AS total_customers
FROM customers 
GROUP BY country 


/*(HAVING) Retrieve the average score for each country considering only customers with a 
score not rqual to 0 and return only those countries with an average score greater than 430*/
SELECT 
	country,
	AVG(score) AS avg_column
FROM customers
WHERE score!= 0
GROUP BY country
HAVING AVG(score) > 430

-- (DISTINCT) Retrieve a unique list of all countries
SELECT DISTINCT
country
FROM customers

-- (TOP) Retrieve only 3 customers
SELECT TOP 3 *
FROM customers

-- (TOP) Retrieve the top 3 customers with the highest score
SELECT TOP 3*
FROM customers
ORDER BY score DESC

-- (TOP) Retrieve the lowest 2 customers based on their score
SELECT TOP 2*
FROM customers
ORDER BY score ASC

-- (TOP) Retrieve the 2 recent orders
SELECT TOP 2*
FROM orders
ORDER BY order_date DESC

--Static data
SELECT 
id,
first_name,
'NEW CUSTOMER' AS customer_type
FROM customers*/