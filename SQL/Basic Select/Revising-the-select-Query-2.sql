-- Query to select the names of cities with a population greater than 120,000 in the USA
-- This SQL query retrieves the names of cities located in the USA
SELECT NAME
FROM CITY
WHERE POPULATION > 120000
AND COUNTRYCODE = "USA"