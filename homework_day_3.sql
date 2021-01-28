-- Question #1
-- All customers who live in Texas

SELECT customer_id, first_name, last_name, district
FROM customer
FULL JOIN address 
ON customer.address_id = address.address_id
WHERE district LIKE 'Texas';

-- Question #2
-- customer id in payment is key to join them. maybe payment. so join the customer and payment tables with customer id
SELECT first_name, last_name, amount
FROM customer
INNER JOIN payment
ON customer.customer_id = payment.customer_id
WHERE amount > 6.99

-- Question #3 - show all customer names who have made payments over $175 - use subqueries

SELECT first_name, last_name
FROM customer
WHERE customer_id IN (
	SELECT customer_id
	FROM payment
	GROUP BY customer_id
	HAVING SUM(amount) >175
);

-- Question #4 NEPAL

FULL JOIN address
ON customer.address_id = address.address_id
FULL JOIN city
ON address.city_id = city.city_id
FULL JOIN country
ON city.country_id = country.country_id
WHERE country LIKE 'Nepal';

-- Question #5 Number of transactions

SELECT staff.staff_id, first_name, last_name, count(payment_id) AS transactions
FROM staff
INNER JOIN payment
ON staff.staff_id = payment.staff_id
GROUP BY staff.staff_id
ORDER BY count(payment_id) desc;

-- 6 # HOW MANY MOVIES OF EACH RATING.  PRESENT IN DESCENDING ORDER

SELECT rating, COUNT (rating)
FROM film
GROUP BY rating
ORDER BY COUNT DESC;

-- #7 Show all customers who have made payments over 6.99

SELECT first_name, last_name
FROM customer
WHERE customer_id IN (
	SELECT customer_id
	FROM payment
	WHERE amount > 6.99
);

-- Question 8.  How many free movies.  The COUNT ONLY

SELECT COUNT (amount)
from payment
where amount = 0;












-- #4 Customers who live in Nepal

select *
from customer
where country_id = 66


select *
from rental




