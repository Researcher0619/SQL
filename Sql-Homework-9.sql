-- 1) Write the INNER JOIN query that we can see the city and country names in the city table and country table together.

SELECT city, country 
FROM city
INNER JOIN country ON city.country_id = country.country_id;


-- 2) Write the INNER JOIN query that we can see the first_name and last_name names in the customer table together with the payment_id in the customer table and the payment table.
SELECT first_name, last_name, payment_id 
FROM customer
INNER JOIN payment
ON customer.customer_id = payment.customer_id;

-- 3) Write the INNER JOIN query in which we can see the first_name and last_name names in the customer table together with the rental_id in the customer table and rental table.
SELECT rental_id, first_name, last_name
FROM customer
INNER JOIN rental
ON rental.customer_id = customer.customer_id;

