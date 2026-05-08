--BETWEEN
 --Retrieve all customers whose score falls in the range between 100 and 500 are either from USA or have a score greater  than 500WHERE country = 'USA' AND score > 500
 SELECT*
 FROM customers
 WHERE score BETWEEN 100 AND 500                           


 --Retrieve all customers whose score falls in the range between 100 and 500 are either from USA or have a score greater  than 500WHERE country = 'USA' AND score > 500
 SELECT*
 FROM customers
 WHERE score>= 100 AND score <= 500