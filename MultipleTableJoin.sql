USE SalesDB

/* Using Sales DB, Retrieve a list of all orders, along with the related customer, product
and employee details. For each order, display
Order Id, Customer's name, Product name, Sales, price, Sales person's name */

SELECT * FROM Sales.Orders; 
SELECT * FROM Sales.Customers; 
SELECT * FROM Sales.Employees; 
SELECT * FROM Sales.Products; 
SELECT * FROM Sales.OrdersArchive

SELECT 
	o.OrderID,
	o.Sales,
	c.FirstName AS customerFirstName,
	c.LastName AS customerLastName,
	p.Product,
	p.Price,
	e.FirstName AS EmployeeFirstName,
	e.LastName AS EmployeeLasttName
FROM Sales.Orders AS o
LEFT JOIN Sales.Customers AS c
ON o.CustomerId = c.CustomerID
LEFT JOIN Sales.Products AS p
ON o.ProductID = p.ProductID
LEFT JOIN Sales.Employees AS e
On o.SalesPersonID = e.EmployeeID





