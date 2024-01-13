-- List the 5 longest (length) films in the film table whose title ends with the character 'n'.
SELECT length, title
FROM film
WHERE title LIKE '%n'
ORDER BY length DESC
LIMIT 5;

-- List the second (6,7,8,9,10) 5 films (6,7,8,9,10) in the film table with the shortest (length) film name (title) ending with the character 'n'.
SELECT title, length
FROM film 
WHERE title LIKE '%n'
ORDER BY length 
OFFSET 5
LIMIT 5;

-- Sort the first 4 data in descending order according to the last_name column in the customer table, provided that store_id is 1.
SELECT *
FROM customer
WHERE store_id = 1
ORDER BY last_name DESC
LIMIT 4;

