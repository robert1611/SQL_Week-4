-- -- Hello Wordl SQL Query SELECT ALL records from the actor table
SELECT * 
FROM actor;

--Query for a first_name that equals Nick using the WHERE clause
SELECT first_name, last_name
FROM actor
WHERE first_name = 'Nick'
-- Query for first_name and last_name in the actor table
SELECT first_name, last_name
FROM actor;

--Query for a first_name that is equal to Nick using the LIKE and WHERE clause
SELECT first_name, last_name
FROM actor
WHERE first_name LIKE 'Nick'

--Query for all first_names that start with a N using the LIKE and WHERE clauses - using the wildcard at the end
SELECT first_name,lasr_name
FROM actor
WHERE first_name LIKE 'N%'

-- Query for all first_name valued that start with K and have 2 letters directly following

SELECT first_name, last_name
FROM actor
WHERE first_name LIKE 'K__';

-- Query for all first_name values that start with K with two characters directly following including other chars
-- if available.  COMBINE: WILDCARD and the underscore character

SELECT first_name, last_name
FROM actor
WHERE first_name LIKE 'K__%';
