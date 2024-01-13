-- List the different values in the replacement_cost column in the film table.

SELECT DISTINCT replacement_cost
FROM film;

--How many different data are in the replacement_cost column in the film table?

SELECT COUNT (DISTINCT replacement_cost)
FROM film;

-- How many of the film titles in the film table start with the character T and at the same time the rating is equal to 'G'?

SELECT COUNT(*)
FROM film
WHERE title LIKE 'T%' AND rating = 'G';

-- How many of the country names in the country table have 5 characters?

SELECT COUNT (country)
FROM country
WHERE country LIKE '_____'


-- How many of the city names in the city table end with the character 'R' or r?

SELECT COUNT(city)
FROM city
WHERE city ILIKE '%R';



