--FORMAT
--DAY
SELECT
OrderID,
CreationTime,
FORMAT(CreationTime, 'dd') dd,
FORMAT(CreationTime, 'ddd') ddd,
FORMAT(CreationTime, 'dddd') dddd,
--MONTH
FORMAT(CreationTime, 'MM') MM,
FORMAT(CreationTime, 'MMM') MMM,
FORMAT(CreationTime, 'MMMM') MMMM,
FORMAT(CreationTime, 'MM-dd-yyyy') USA_Format,
FORMAT(CreationTime, 'dd-MM-yyyy') EURO_Format
FROM Sales.Orders


--Show the creation time using the following format:
--Day Wed Jan Q1 2025 12:34:56 PM

SELECT
OrderID,
CreationTime,
'Day' + ' ' + FORMAT(CreationTime, 'ddd MMM') + ' ' + 
'Q' + DATENAME(quarter, CreationTime) + ' ' + 
FORMAT(CreationTime, 'yyyy hh:mm:ss tt') AS CustomeFormat
FROM Sales.Orders


SELECT
FORMAT(OrderDate, 'MMM yy') OrderDate,
COUNT(*)
FROM Sales.Orders
GROUP BY FORMAT(OrderDate, 'MMM yy')


--CONVERT
SELECT
CONVERT(INT, '123') AS [String to Int CONVERT],
CONVERT(DATE, '2025-08-20') AS [String to Date CONVERT],
CreationTime,
CONVERT(DATE, CreationTime) AS [Datetime to Date CONVERT]
FROM Sales.Orders

SELECT
CreationTime,
CONVERT(DATE, CreationTime) AS [Datetime to Date CONVERT],
CONVERT(VARCHAR, CreationTime, 32) AS [USA Std. Style:32],
CONVERT(VARCHAR, CreationTime, 34) AS [EURO Std. Style:34]
FROM Sales.Orders

--CASTING 
SELECT
CAST('123' AS INT) AS [String to Int],
CAST(123 AS VARCHAR) AS [Int to String],
CAST('2025-08-20' AS DATE) AS [String to Date],
CAST('2025-08-20' AS DATETIME) AS [String to Datetime],
CreationTime,
CAST(CreationTime AS DATE) AS [Datetime to date]
FROM Sales.Orders



