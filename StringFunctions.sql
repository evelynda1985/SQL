
USE MyDatabase
-- Show list of customer's first names together with their country in one column

SELECT 
	first_name,
	country,
	CONCAT(first_name, '-', country) AS name_country
FROM customers

-- Transform the customer's first name to lowercase

SELECT 
	first_name,
	country,
	CONCAT(first_name, '-', country) AS name_country,
	LOWER(first_name) AS low_name
FROM customers

-- Transform the customer's first name to uppercase

SELECT 
	first_name,
	country,
	CONCAT(first_name, '-', country) AS name_country,
	LOWER(first_name) AS low_name,
	uPPER(first_name) AS up_name
FROM customers

-- Find customers whose first name contains leading or trailing spaces

SELECT
	first_name
FROM customers
WHERE first_name != TRIM(first_name);

SELECT
	first_name,
	LEN(first_name) AS len_name
FROM customers;

SELECT
	first_name,
	LEN(first_name) AS len_name,
	LEN(TRIM(first_name)) AS len_trim_name,
	LEN(first_name) - LEN(TRIM(first_name)) AS flag
FROM customers
WHERE LEN(first_name) != LEN(TRIM(first_name))

-- Remove dashes (-) from a phone number

SELECT 
'123-456-7890' AS phone,
REPLACE('123-456-7890', '-', '') AS clean_phone

-- Replace file extension form txt to csv
SELECT
'report.txt' AS old_filename,
REPLACE('report.txt', 'txt','csv') AS new_filename

-- Calculate the lenght or each customer's first name.

SELECT
	first_name,
	LEN(first_name) AS len_name
FROM customers

-- Retrieve the first 2 characters of each first name

SELECT 
	first_name,
	LEFT(TRIM(first_name),2) first_2_char
FROM customers

--Retrieve the last 2 characters of each first name
SELECT 
	first_name,
	LEFT(TRIM(first_name),2) first_2_char,
	RIGHT(first_name,2) last_2_char
FROM customers

-- Retrieve a list of customer's first name after removing the first character

SELECT 
	first_name,
	SUBSTRING(TRIM(first_name), 2, LEN(first_name)) AS sub_name
FROM customers