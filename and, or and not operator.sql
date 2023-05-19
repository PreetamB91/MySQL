SELECT * FROM sakila.film
WHERE (rental_duration>6 AND length>70) OR
		replacement_cost>20