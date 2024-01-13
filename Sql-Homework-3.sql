-- List the country names in the country column of the country table starting with the character 'A' and ending with the character 'a'.

SELECT country
FROM country
WHERE country like 'A%a';

-- List the country names in the country column of the country table that have at least 6 characters and end with the character 'n'.

SELECT country
FROM country
WHERE country LIKE '%_____%n';

-- List at least 4 of the film titles in the title column in the film table that contain the character 'T', regardless of upper or lower case.

SELECT title
FROM film 
WHERE title ILIKE '%t%t%t%t%';

-- Sort the data in all columns in the film table starting with the character 'C' in the title, with a length greater than 90 and a rental_rate of 2.99.

SELECT *
FROM film
WHERE title LIKE 'C%' AND length > 90 AND rental_rate = 2.99;
