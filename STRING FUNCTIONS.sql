--STRING FUNCTIONS

--MANIPULATION
--CONCAT
--Show a list of customers'first names together with their country in one column
SELECT
first_name,
country,
CONCAT(first_name, '-', country) AS name_country
FROM customers


--LOWER
--transform the customer's first name to lowewrcase
SELECT
first_name,
country,
CONCAT(first_name, '-', country) AS name_country,
LOWER(first_name) AS low_name
FROM customers


--UPPER
--transform the customer's first name to lowewrcase
SELECT
first_name,
country,
CONCAT(first_name, '-', country) AS name_country,
UPPER(first_name) AS up_name
FROM customers


--TRIM
--Find customers whose first name contains leading or trailing spaces
SELECT
	first_name
FROM customers
WHERE first_name != TRIM(first_name)


--REPLACE
--Remove dashes (-) from a phone number
SELECT
'123-456-7890' AS phone,
REPLACE ('123-456-7890', '-', '/') AS clean_phone

--Replace File Extence from txt to csv
SELECT
'report.txt' AS old_filename,
REPLACE('report.txt', ('.txt'), ('.csv')) AS new_filename



--CALCULATION
--LEN
--Calculate the length of each customer's first name
SELECT
	first_name
FROM customers
WHERE first_name != TRIM(first_name)


--Find customers' length of first name
SELECT
	first_name,
	LEN(first_name) len_name,
	LEN(TRIM(first_name)) len_trim_name,
	LEN(first_name) -LEN(TRIM(first_name)) flag
FROM customers
WHERE LEN(first_name) != LEN(TRIM(first_name))



-- STRING EXTRACTION
--LEFT
--Retrieve the first two characters of each first name
SELECT
	first_name,
	LEFT(TRIM(first_name), 2) first_2_char
FROM customers

--RIGHT
--Retrieve the last two characters of each first name
SELECT
	first_name,
	LEFT(TRIM(first_name), 2) first_2_char,
	RIGHT(TRIM(first_name), 2) last_2_char
FROM customers


--SUBSTRING
--Retrieve a list of customers' first name after removing the first character
SELECT
	first_name,
	SUBSTRING(TRIM(first_name), 2, LEN(first_name)) sub_name
FROM customers



