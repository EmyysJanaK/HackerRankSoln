-- This SQL query retrieves the names of cities located in Japan.
-- It selects the NAME column from the CITY table
SELECT NAME
FROM CITY
WHERE COUNTRYCODE = "JPN";