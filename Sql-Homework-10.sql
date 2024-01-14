-- 1) City and Country Names with LEFT JOIN:
-- Retrieve city and country names from the city table and country table using LEFT JOIN
SELECT country.country_id, city.city_id, city, country
FROM country 
LEFT JOIN city ON city.country_id = country.country_id
WHERE (city.country_id IS NOT NULL AND country.country_id IS NOT NULL)
ORDER BY country_id ASC;


-- 2)Customer Names and Payment IDs with RIGHT JOIN:
-- Retrieve payment_id along with first_name and last_name from the Customer and Payment tables using RIGHT JOIN
SELECT first_name, last_name
FROM customer
RIGHT JOIN payment ON customer.customer_id = payment.customer_id;


-- 3) Customer Names and Rental IDs with FULL JOIN:
-- Retrieve rental_id along with first_name and last_name from the Customer and Rental tables using FULL JOIN
SELECT first_name, last_name
FROM customer
FULL JOIN rental ON customer.customer_id = rental.customer_id;
