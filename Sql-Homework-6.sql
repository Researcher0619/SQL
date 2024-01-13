-- What is the average of the values in the rental_rate column in the film table?
SELECT ROUND(AVG(rental_rate),3)
FROM film;

-- How many of the films in the film table start with the character 'C'?
SELECT COUNT(title)
FROM film
WHERE title LIKE 'C%';

-- How many minutes is the longest (length) film in the film table with rental_rate equal to 0.99?
SELECT MAX(length)
FROM film
WHERE rental_rate = 0.99;

-- How many different replacement_cost values are in the film table for films with a length greater than 150 minutes?

SELECT DISTINCT replacement_cost
FROM film
WHERE length > 150;

