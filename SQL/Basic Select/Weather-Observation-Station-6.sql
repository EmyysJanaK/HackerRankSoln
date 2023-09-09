-- Query to find all distinct city names from the STATION table
-- that start with a vowel
-- This SQL query retrieves distinct city names from the STATION table
SELECT DISTINCT CITY
FROM STATION
WHERE CITY LIKE "a%"
   OR CITY LIKE "e%"
   OR CITY LIKE "i%"
   OR CITY LIKE "o%"
   OR CITY LIKE "u%";

-- this works faster and better
SELECT DISTINCT CITY
FROM STATION
WHERE LEFT(CITY, 1) IN ('a', 'e', 'i', 'o', 'u');
