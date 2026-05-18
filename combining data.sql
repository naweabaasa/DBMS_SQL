--COMBINING INFORMATION
--Orders data aere storeds in separate tables(Orders and OrderArchive)
-- Combine all orders data into one report without duploicates
SELECT
'Orders' AS SourceTable
 ,[OrderID]
,[ProductID]
,[CustomerID]
,[SalesPersonID]
,[OrderDate]
,[ShipDate]
,[OrderStatus]
,[ShipAddress]
,[BillAddress]
,[Quantity]
,[Sales]
,[CreationTime]

FROM Sales.Orders
UNION 

SELECT
'OrderArchive' AS SourceTable
,[OrderID]
,[ProductID]
,[CustomerID]
,[SalesPersonID]
,[OrderDate]
,[ShipDate]
,[OrderStatus]
,[ShipAddress]
,[BillAddress]
,[Quantity]
,[Sales]
,[CreationTime]

FROM Sales.OrdersArchive;