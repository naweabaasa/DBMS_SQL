--MEMBERSHIP OPERATORS
--Retrieve all customers FROM EITHER GERMANY OR USA 100 and 500 are either from USA or have a score greater  than 500WHERE country = 'USA' AND score > 500
 /*SELECT*
 FROM customers
 WHERE country ='Germany' OR country = 'USA'*/

 --Retrieve all customers whose score falls in the range between 100 and 500 are either from USA or have a score greater  than 500WHERE country = 'USA' AND score > 500
 SELECT*
 FROM customers
 WHERE country IN ('Germany', 'USA')