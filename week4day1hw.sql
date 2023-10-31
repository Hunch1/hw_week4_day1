-- 1. How many actors are there with the last name ‘Wahlberg’?
SELECT first_name, last_name
FROM actor
WHERE last_name = 'Wahlberg';

-- found 2 actors with the last name of Whalber
-- made sure to chose first name to make sure they are acually multiple different actors 


-- 2. How many payments were made between $3.99 and $5.99?
SELECT count(amount)
FROM payment
WHERE amount BETWEEN 3.99 and 5.99;

--  found 0 payments that are between 3.99 and 5.99
-- used count to show just the amount of the payments 

-- 3. What film does the store have the most of? (search in inventory)
SELECT COUNT(inventory_id),film_id
FROM inventory
GROUP BY film_id
ORDER BY COUNT(inventory_id)DESC;

-- from the data the hight amount of films is 8 but there is many different films with
-- the same amount of 8???



-- 4. How many customers have the last name ‘William’?
SELECT last_name
from customer
WHERE last_name = 'William';

-- found 0 customers with the last name william
-- just selected any last name to match william from the customer table


-- 5. What store employee (get the id) sold the most rentals?

SELECT staff_id, count(amount)
from payment
GROUP BY staff_id

-- so theres only 2 employees in this store huh, employee 2 sold the most
-- selected the staf_id and aggregated the total amount sold then grouped them by the employee id



-- 6. How many different district names are there?
SELECT count(district)
FROM address;

-- there is 603 distinct district names
-- used count to display just the amount of total distinct districts from address table


-- 7. What film has the most actors in it? (use film_actor table and get film_id)
SELECT count(actor_id), film_id
FROM film_actor
GROUP BY film_id
ORDER BY count(actor_id) desc;

-- this is assuming all movies have thier own indivual id but film 508 had 15 actors in it
-- used count to total all of the actors in desc order while grouping them by the fild id



-- 8. From store_id 1, how many customers have a last name ending with ‘es’? (use customer table)
SELECT  last_name
FROM customer
WHERE last_name LIKE '%es';

--there is 21 customers with names ending with es
-- % kinda just guessed if it would pick anything before


-- 9. How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers
-- with ids between 380 and 430? (use group by and having > 250)

-- 10. Within the film table, how many rating categories are there? And what rating has the most
SELECT rating, count(title)
FROM film
GROUP BY rating
ORDER BY count(title) DESC;

-- there is 5 rating categories and the one category with the most is PG-13 at 224
-- group them by the rating and used the indiviaul titles to count the amount titles with the ratings