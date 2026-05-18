--DATE AND TIME FUNCTIONS
--GETDATE
SELECT
OrderID,
CreationTime,
'2025-08-20' HardCoded,
GETDATE() TODAY
FROM Sales.Orders

--PART EXTRACTION
--YEAR, MONTH, DAY
SELECT
OrderID,
CreationTime,
YEAR(CreationTime) Year,
MONTH(CreationTime) Month,
DAY(CreationTime) Day
FROM Sales.Orders


--DATEPART(INT)
SELECT
OrderID,
CreationTime,
DATEPART(year, CreationTime) Year_dp,
DATEPART(month, CreationTime) Month_dp,
DATEPART(day, CreationTime) Day_dp,
DATEPART(hour, CreationTime) Hour_dp,
DATEPART(quarter, CreationTime) Quarter_dp,
DATEPART(week, CreationTime) Week_dp
FROM Sales.Orders


--DATENAME(STRING)
SELECT
OrderID,
CreationTime,
DATENAME(month, CreationTime) Month_dn,
DATENAME(weekday, CreationTime) weekday_dn,
DATENAME(day, CreationTime) Day_dn,
DATENAME(year, CreationTime) Year_dn
FROM Sales.Orders

--DATETRUNC
SELECT
OrderID,
CreationTime,
DATETRUNC(minute, CreationTime) Minute_dt,
DATETRUNC(day, CreationTime) Day_dt,
DATENAME(year, CreationTime) Year_dt
FROM Sales.Orders

SELECT
DATETRUNC(month, CreationTime) Creation,
COUNT(*)
FROM Sales.Orders
GROUP BY DATETRUNC(month, CreationTime)


SELECT
DATETRUNC(year, CreationTime) Creation,
COUNT(*)
FROM Sales.Orders
GROUP BY DATETRUNC(year, CreationTime)


--EOMONTH
SELECT
OrderID,
CreationTime,
EOMONTH(CreationTime) EndOfMonth,
CAST(DATETRUNC(month, CreationTime) AS DATE) StartOfMonth
FROM Sales.Orders

-- How many orders were placed each year
SELECT
YEAR(OrderDate),
COUNT(*) NrOfOrders
FROM Sales.Orders
GROUP BY YEAR(OrderDate)

-- How many orders were placed each year
SELECT
MONTH(OrderDate),
COUNT(*) NrOfOrders
FROM Sales.Orders
GROUP BY MONTH(OrderDate)


-- How many orders were placed each month
SELECT
DATENAME(month, OrderDate) AS OrderDate,
COUNT(*) NrOfOrders
FROM Sales.Orders
GROUP BY DATENAME(month, OrderDate)

--FILTERING
-- Shopw all orders that were placed during the month of February
SELECT*

FROM Sales.Orders
WHERE MONTH(OrderDate) = 2



