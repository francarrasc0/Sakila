SELECT title, description, release_year, rating, special_features, category.name
FROM film
JOIN film_category ON film.film_id = film_category.film_id
LEFT JOIN category ON film_category.film_id = category.category_id;

SELECT actor.actor_id, first_name, last_name, title, description, release_year
FROM film
JOIN film_actor ON film.film_id = film_actor.film_id
JOIN actor on film_actor.film_id = actor.actor_id
WHERE actor. actor_id = 5;

SELECT customer.first_name, customer.last_name, email, address.address 
FROM city
JOIN address ON city.city_id = address.city_id
JOIN customer ON address.address_id = customer.address_id
WHERE city.city_id IN (1,42,312,459) AND customer.store_id = 1;

SELECT distinct * FROm film
JOIN film_actor
ON film.film_id = film_actor.film_id
WHERE rating = 'G'
AND special_features LIKE '%behind the scenes'
AND film_actor.actor_id=15;

