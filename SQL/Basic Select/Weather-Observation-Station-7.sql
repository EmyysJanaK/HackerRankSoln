-- Query to find distinct city names from the STATION table
-- that end with a vowel
SELECT DISTINCT CITY
FROM STATION
WHERE RIGHT(CITY, 1) IN ('a', 'e', 'i', 'o', 'u');
