--No join

SELECT *
FROM customers

SELECT *
FROM orders

-- INNER JOIN only customers with orders

SELECT
	c.id,
	c.first_name,
	o.order_id,
	o.sales
FROM customers AS c
INNER JOIN orders AS o
ON c.id = o.customer_id

-- Get all customer with their orders including those without orders

SELECT
	c.id,
	c.first_name,
	o.order_id,
	o.sales
FROM customers AS c
LEFT JOIN orders AS o
ON c.id = o.customer_id

/* Get all customers along with their orders
including orders without matching customers */


SELECT
	c.id,
	c.first_name,
	o.order_id,
	o.sales
FROM customers AS c
RIGHT JOIN orders AS o  
ON c.id = o.customer_id

/* get all customers with their orders
including orders without matching customers  
usign LEFT JOIN */

SELECT
	c.id,
	c.first_name,
	o.order_id,
	o.sales
FROM orders AS o  
LEFT JOIN customers AS c
ON c.id = o.customer_id

/* get all customers and all orders, even if there's no match*/

SELECT
	c.id,
	c.first_name,
	o.order_id,
	o.sales
FROM orders AS o  
FULL JOIN customers AS c
ON c.id = o.customer_id

/* Get all customers who haven't place any order  */

SELECT
	c.id,
	c.first_name,
	o.order_id,
	o.sales
FROM customers AS c 
LEFT JOIN orders AS o  
ON c.id = o.customer_id
WHERE o.customer_id IS NULL

/* Get all orders without matching customers*/ 

SELECT
	c.id,
	c.first_name,
	o.order_id,
	o.sales
FROM customers AS c 
RIGHT JOIN orders AS o  
ON c.id = o.customer_id
WHERE c.id IS NULL

/* Get all orders without matching customers 
withouth using RIGHT JOIN */ 

SELECT
	c.id,
	c.first_name,
	o.order_id,
	o.sales
FROM orders AS o 
LEFT JOIN customers AS c 
ON c.id = o.customer_id
WHERE c.id IS NULL

/* Find customers without orders and
orders wihtouth customers */

SELECT
	c.id,
	c.first_name,
	o.order_id,
	o.sales
FROM orders AS o 
FULL JOIN customers AS c 
ON c.id = o.customer_id
WHERE c.id IS NULL
OR o.customer_id IS NULL

/* Get all customers along with their orders
but only for customers who have placed and order
withouth using INNER JOIN */

SELECT
	c.id,
	c.first_name,
	o.order_id,
	o.sales
FROM customers AS c 
LEFT JOIN orders AS o
ON c.id = o.customer_id
WHERE o.customer_id IS NOT NULL

/* Generate all possible combinations of customers and orders */

SELECT *
FROM customers
CROSS JOIN orders

