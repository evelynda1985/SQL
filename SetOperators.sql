USE SalesDB

-- Combine the data from employees and customers into one table

SELECT
	FirstName,
	LastName
FROM Sales.Customers

UNION

SELECT
	FirstName,
	LastName
FROM Sales.Employees 

-- Combine the data from employees and customers into one table, including duplicates

SELECT
	FirstName,
	LastName
FROM Sales.Customers

UNION ALL

SELECT
	FirstName,
	LastName
FROM Sales.Employees 

-- Find the employees who are not customers at the same time
SELECT
	FirstName,
	LastName
FROM Sales.Employees 

EXCEPT

SELECT
	FirstName,
	LastName
FROM Sales.Customers

--Find the employees, who are also customers
SELECT
	FirstName,
	LastName
FROM Sales.Employees 

INTERSECT

SELECT
	FirstName,
	LastName
FROM Sales.Customers

-- Orders data are store in separated tables (orders adn OrdersArchive)
-- Combine all orders data into one report without duplicate

SELECT 
	[OrderID]
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
    [OrderID]
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
FROM Sales.OrdersArchive