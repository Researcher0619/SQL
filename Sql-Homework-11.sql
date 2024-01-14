-- 1) -- Retrieve all distinct first names from the "actor" and "customer" tables
SELECT first_name FROM actor
UNION
SELECT first_name FROM customer;

-- 2) -- Retrieve the common (intersecting) first names from the "actor" and "customer" tables
SELECT first_name FROM actor
INTERSECT
SELECT first_name FROM customer;

-- 3) -- Retrieve the first names from the "actor" table that do not exist in the "customer" table
SELECT first_name FROM actor
EXCEPT
SELECT first_name FROM customer;

-- 4) 

-- 4.1) Retrieve all first names (including duplicates) from the "actor" and "customer" tables
SELECT first_name FROM actor
UNION ALL
SELECT first_name FROM customer;

-- 4.2) Retrieve all common (intersecting) first names (including duplicates) from the "actor" and "customer" tables
SELECT first_name FROM actor
INTERSECT ALL
SELECT first_name FROM customer;

-- 4.3) Retrieve all first names from the "actor" table that do not exist in the "customer" table, including duplicates
SELECT first_name FROM actor
EXCEPT ALL
SELECT first_name FROM customer;
