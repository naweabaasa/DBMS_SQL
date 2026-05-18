/* Task:  Using SalesDB, Retrieve a list of all orders, along with the related customer, product
and employee details. For each order, display:
Order ID, Customer's name, Product name, Sales, Price, Sales person's name*/


SELECT
	o.OrderID,
	o.Sales,
	c.FirstName AS CustomerFirstName,
	c.LastName AS CustomerLastName,
	P.Product AS ProductName,
	p.Price,
	e.FirstName AS EmployeeFirstName,
	e.LastName AS EmployeeLastName
FROM Sales.Orders AS o
LEFT JOIN Sales.Customers AS c
ON o.CustomerID = c.CustomerID
LEFT JOIN Sales.Products AS p
ON o.ProductID = p.ProductID
LEFT JOIN Sales.Employees AS e
ON o.SalesPersonID =e.EmployeeID
