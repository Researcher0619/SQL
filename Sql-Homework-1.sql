
# SQL Homework - dvdrental Database

Hello,

This repository contains SQL queries for various scenarios performed on the dvdrental sample database. Below are the details of each query:


-- Sort the data in the title and description columns in the film table.
SELECT title, description
FROM film;

-- Sort the data in all columns in the film table, provided that the film length is greater than 60 AND less than 75.
SELECT *
FROM film 
WHERE length > 60 AND length < 75;


-- Sort the data in all columns in the film table with the conditions rental_rate 0.99 AND replacement_cost 12.99 OR 28.99.
SELECT * 
FROM film
WHERE rental_rate = 0.99 AND (replacement_cost = 12.99 OR replacement_cost = 28.99);

-- Sort the data in the film table whose length is NOT greater than 50 and at the same time the rental_rate value is NOT 2.99 or 4.99.

SELECT * 
FROM film
WHERE length <= 50 AND rental_rate NOT IN (2.99, 4.99);

-- Mary's Surname is Smith.
SELECT first_name, last_name
FROM customer
WHERE first_name = 'Mary';
