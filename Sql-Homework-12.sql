-- 1) -- Count the number of films with a length above the average film length
SELECT title, length, 
    (SELECT ROUND(AVG(length), 2) FROM film) AS avg_length FROM film
WHERE length > 
(
    SELECT ROUND(AVG(length), 2) FROM film	
)
ORDER BY length;

-- 2) -- Count the number of films with the highest rental_rate
SELECT COUNT(rental_rate) FROM film
WHERE rental_rate = 
(SELECT MAX(rental_rate) FROM film);


-- 3) -- Display films with the lowest rental_rate and replacement_cost values
SELECT title, rental_rate, replacement_cost FROM film
WHERE rental_rate = (
SELECT MIN(rental_rate) FROM film
)
AND replacement_cost = (
SELECT MIN(replacement_cost) FROM film
);


-- 4) -- Display customers and the count of their payments, sorted by customer_id
SELECT customer_id, COUNT(amount) AS payment_count FROM payment
GROUP BY customer_id
ORDER BY customer_id;
