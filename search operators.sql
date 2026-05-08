--SEARCH
--Retrieve all customers whose FIRST NAME HAS 'R' in the 3rd position
 SELECT*
 FROM customers
 WHERE first_name LIKE '__r%'