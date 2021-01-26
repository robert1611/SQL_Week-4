-- Query for first_name and last_name in the actor table
SELECT first_name, last_name
FROM actor;

-- Query for a first_name that equals Nick using the WHERE clause
SELECT first_name, last_name
FROM actor
WHERE first_name = 'Nick';

-- Query for a first_name that is equal to Nick using the LIKE and WHERE clauses
SELECT first_name, last_name
FROM actor
WHERE first_name LIKE 'Nick';


-- Query for all first_names that start with a N using the LIKE and WHERE clauses -- using a WILDCARD character
SELECT first_name,last_name
FROM actor
WHERE first_name LIKE 'N%';

-- Query for all first_name values that start with K and have 2 letters directly following -- using the underscore character
SELECT first_name, last_name
FROM actor
WHERE first_name LIKE 'K__';

-- Query for all first_name values that start with K with 2 characters directly following, but
-- Including other character if available -- COMBINE: WILDCARD and the underscore characters
SELECT first_name,last_name
FROM actor
WHERE first_name LIKE 'K__%n';

-- Comparing operators in SQL:
-- Greater Than (>) -- Less Than (<)
-- Greater OR Equal To (>=) -- Less OR Equal To (<=)
-- Not Equal (<>)

-- Explore the data with SELECT ALL Query
SELECT *
FROM payment;

-- Query for data that shows customers who paid
-- an amount that was GREATER than $2
SELECT customer_id, amount
FROM payment
WHERE amount > 2.00;

-- Query for data showing customers paying:
-- an amount LESS than $7.99

SELECT customer_id, amount
FROM payment
WHERE amount < 7.99;

-- Query for data that show customers who paid
-- an amount LESS than OR EQUAL to $7.99

SELECT customer_id, amount
FROM payment
WHERE amount <=7.99;

-- query for data showing customers paying
-- amount GREATER than or EQUAL to $2.00
-- doing so in Ascending order

SELECT customer_id, amount
FROM payment
WHERE amount >= 2.00
ORDER BY amount ASC;

-- Q fir data shows amount b/w $2.00 and $7.99
-- an amount BETWEEN with the AND Cause
SELECT customer_id, amount
FROM payment
WHERE amount BETWEEN 2.00 and 7.99;

-- Q fir data shows amount b/w $2.00 and $7.99
-- an amount BNOT EQUAL to $0.00
--Order the results in descending order

SELECT customer_id, amount
FROM payment
WHERE amount <> 0.00
ORDER BY amount DESC;


-- SQL Aggregation => SUM(), AVG(), COUNT(), MIN(), MAX()
-- Query to display sum of amounts paid GREATER than $5.99
SELECT AVG(amount)
FROM payment
WHERE amount > 5.99;

--query to display the count of > 5.99
SELECT COUNT(amount)
FROM payment
WHERE amount > 5.99;

--query to display the count of > 5.99
SELECT COUNT(DISTINCT amount)
FROM payment
WHERE amount > 5.99;



--query to display the max of > 5.99
SELECT MAX(amount)
FROM payment
WHERE amount > 5.99;

--query to display the min of > 5.99

SELECT MIN(amount)
FROM payment
WHERE amount > 5.99;

-- GROUP BY amount
-- ORDER BY amount;

SELECT customer_id, SUM(amount)
FROM payment
GROUP BY customer_id
ORDER BY customer_id ASC;

-- Query t0 dislay summed amounts for each customer_id
-- This is a separate example..which is very similar in
-- The result given from the previous example

SELECT customer_id, amount
FROM payment
GROUP BY amount, customer_id
ORDER BY customer_id DESC;

-- SQL HAVING CLAUSE

-- Query to display customer_ids that show up more than 5 times
-- Group by customer's email

SELECT COUNT(customer_id), email
FROM customer
WHERE email LIKE 'j__.w%'
GROUP BY email
HAVING COUNT(customer_id) > 0;

-- #1 Query for first_name and last_name in the actor table

SELECT COUNT (last_name)
FROM actor
WHERE last_name = 'Wahlberg';

-- Count 2

-- How many payments between $3.99 and $5.99

SELECT COUNT(amount)
FROM payment
WHERE amount BETWEEN 3.99 and 5.99;

-- #3 what film does the store have the most of

SELECT MAX (inventory_id)
FROM inventory;

-- #4 how many customers have the last name William

SELECT COUNT (last_name)
FROM customer
WHERE last_name = 'William';

-- #5 What store employee (get_id) sold the most videos

SELECT staff_id, COUNT(staff_id) as staff_count
FROM payment
GROUP BY staff_id
ORDER BY staff_id DESC
;

-- #6 How many different district names are there

SELECT *
FROM address;

SELECT COUNT(DISTINCT district)
FROM address;

-- #7 What film has the most actors in it. Hint film_actor table and get film_id

SELECT film_id, COUNT (actor_id)as actor_count
FROM film_actor
GROUP BY film_id
ORDER BY actor_count desc;

-- #8 From store_id1, how many customers have a name ending in "es" (use customer table )

select count(store_id)
from customer
where store_id = 1 and last_name like '%es';

-- How many payment amounts had rental amounts greater than 250 and customer_id between 380 -430
-- use group by and having > 250

SELECT amount
FROM payment
WHERE customer_id BETWEEN 350 and 430
GROUP BY amount
HAVING COUNT (rental_ID)> 250;

-- #10 Within the film category, how many ratings are there?  Which rating is the most?
-- use max for most 

SELECT DISTINCT rating, COUNT(rating) as rating_count
FROM film
GROUP BY rating
ORDER BY rating_count DESC;



