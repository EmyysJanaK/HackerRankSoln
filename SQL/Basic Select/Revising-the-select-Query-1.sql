-- This SQL query selects all columns from the CITY table
-- where the POPULATION is greater than 100000 and the COUNTRYCODE is "USA".
-- It filters the results to include only cities in the USA with a population exceeding 100,000.
SELECT *
FROM CITY
WHERE POPULATION > 100000
AND COUNTRYCODE = "USA"