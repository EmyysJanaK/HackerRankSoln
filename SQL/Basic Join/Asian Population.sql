-- This SQL query calculates the total population of all cities in Asia
-- by summing the POPULATION column from the CITY table
SELECT SUM(CITY.POPULATION)
FROM COUNTRY
LEFT JOIN CITY ON COUNTRY.CODE = CITY.COUNTRYCODE
WHERE COUNTRY.CONTINENT = 'Asia';