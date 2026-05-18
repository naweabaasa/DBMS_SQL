-- NULL FUNCTIONS
--Find the average scores of the customers
SELECT
CustomerID,
Score,
COALESCE(Score,0) Score2,
AVG (Score) OVER () AvgScores,
AVG(COALESCE(Score,0)) OVER() AvgScores2
FROM Sales.Customers


--HANDLING NULLS
--MATHEMATICAL OPERATORS

--Display the full name of customers in a single field
--by merging first and last named,
--and add 10 bonus points to each customer's score

SELECT
CustomerID,
FirstName,
LastName,
FirstName + ' '  + COALESCE(LastName, ' ' ) AS FullName,
Score,
COALESCE(Score, 0) + 10 AS ScoreWithBonus
FROM Sales.Customers

--USING JOINS
--Sort the customers from lowest to highest scores,
-- with nulls appearing last
SELECT
CustomerID,
Score
FROM Sales.Customers
ORDER BY Score

--Replacing nulls with a big number
--Mth1
SELECT
CustomerID,
Score,
COALESCE (Score, 99999999)
FROM Sales.Customers
ORDER BY COALESCE (Score, 99999999)

--Mth2
SELECT
CustomerID,
Score
FROM Sales.Customers
ORDER BY CASE WHEN Score IS NULL THEN 1 ELSE 0 END, Score


--NULLIF
-- Find the sales price for each order by didviding sales by quantity
SELECT
OrderID,
Sales,
Quantity,
Sales / NULLIF(Quantity,0) AS Price
FROM Sales.Orders

-- Identify the customers who have no scores
SELECT*
FROM Sales.Customers
WHERE Score IS NULL

-- LIST ALL CUSTOMERS WHO HAVE SCORES
SELECT*
FROM Sales.Customers
WHERE Score IS NOT NULL


--ANTI JOINS
--List all details for customers who have not placed any orders
SELECT
c.*,
o.OrderID
FROM Sales.Customers c
LEFT JOIN Sales.Orders o
ON c. CustomerID = O.CustomerID
WHERE o.CustomerID IS NULL


WITH Orders AS (
SELECT 1 Id, 'A' Category UNION
SELECT 2 , NULL UNION
SELECT 3, '' UNION
SELECT 4, '' 
)
SELECT*,
DATALENGTH(category) CategoryLen
FROM Orders

--DATA POLICIES
WITH Orders AS (
SELECT 1 Id, 'A' Category UNION
SELECT 2 , NULL UNION
SELECT 3, '' UNION
SELECT 4, '  ' 
)
SELECT*,
TRIM(Category) Policy1
FROM Orders


WITH Orders AS (
SELECT 1 Id, 'A' Category UNION
SELECT 2 , NULL UNION
SELECT 3, '' UNION
SELECT 4, '  ' 
)
SELECT*,
TRIM(Category) Policy1,
NULLIF(TRIM(Category), '' )Policy2
FROM Orders

WITH Orders AS (
SELECT 1 Id, 'A' Category UNION
SELECT 2 , NULL UNION
SELECT 3, '' UNION
SELECT 4, '  ' 
)
SELECT*,
TRIM(Category) Policy1,
NULLIF(TRIM(Category), '' ) Policy2,
COALESCE (Category, 'unknown') Policy3
FROM Orders

WITH Orders AS (
SELECT 1 Id, 'A' Category UNION
SELECT 2 , NULL UNION
SELECT 3, '' UNION
SELECT 4, '  ' 
)
SELECT*,
TRIM(Category) Policy1,
NULLIF(TRIM(Category), '' ) Policy2,
COALESCE (NULLIF(TRIM(Category), '' ), 'unknown') Policy3
FROM Orders
