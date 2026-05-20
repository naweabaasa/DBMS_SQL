--UPDATE
-- CHANGE THE SCORE OF CUSTOMER 6 TO 0
/*UPDATE customers
SET score = 0
WHERE id = 6

SELECT * 
FROM customers
WHERE id = 6

-- Change the score of cutomer 10 to 0 and update the country to UK
UPDATE customers
SET score = 0
	country = 'UK'
WHERE id = 10 

SELECT *
FROM customers*/

UPDATE customers
SET SCORE = 0
WHERE score is NULL

SELECT*
FROM customers
WHERE score IS NULL