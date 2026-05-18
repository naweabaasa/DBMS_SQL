--UNION
/* Combine the data from employees and customers into one table */
SELECT 
FirstName,
LastName
FROM Sales.Customers
UNION
SELECT
FirstName,
LastName
FROM Sales.Employees;


--UNION ALL 
/* Combine the data from employees and customers into one table, including duplicates */
SELECT 
FirstName,
LastName
FROM Sales.Employees
UNION ALL
SELECT
FirstName,
LastName
FROM Sales.Customers


--EXCEPT
/* Find the employees who arenot customers at the same time */
SELECT 
FirstName,
LastName
FROM Sales.Employees
EXCEPT
SELECT
FirstName,
LastName
FROM Sales.Customers


---INTERSECT
/* Find the employees, who are also customers*/
SELECT 
FirstName,
LastName
FROM Sales.Employees
INTERSECT
SELECT
FirstName,
LastName
FROM Sales.Customers