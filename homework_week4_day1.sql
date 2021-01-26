-- #1 How many actors with the last name Wahlberg

SELECT COUNT (last_name)
FROM actor
WHERE last_name = 'Wahlberg';

-- How many payments between $3.99 and $5.99

SELECT COUNT(amount)
FROM payment
WHERE amount BETWEEN 3.99 and 5.99;

-- #3 what film does the store have the most of

SELECT film_id , COUNT(film_id) AS count_of_film_id
FROM inventory
GROUP BY film_id
ORDER BY count_of_film_id DESC;

-- #4 how many customers have the last name William

SELECT COUNT (last_name)
FROM customer
WHERE last_name = 'William';

-- #5 What store employee (get_id) sold the most videos

SELECT staff_id, COUNT(staff_id) as staff_count
FROM payment
GROUP BY staff_id
ORDER BY staff_id DESC;

-- #6 How many different district names are there

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

-- 9. How many payment amounts had rental amounts greater than 250 and customer_id between 380 -430
-- use group by and having > 250

SELECT amount
FROM payment
WHERE customer_id BETWEEN 350 and 430
GROUP BY amount
HAVING COUNT (rental_ID)> 250;

-- #10 Within the film category, how many ratings are there?  Which rating is the most?
-- use max for most 

SELECT DISTINCT rating, COUNT(rating) AS rating_count
FROM film
GROUP BY rating
ORDER BY rating_count DESC;



