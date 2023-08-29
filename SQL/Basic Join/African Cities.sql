-- This SQL query retrieves the names of all cities located in African countries.
-- It joins the CITY table with the COUNTRY table on the country code
SELECT CITY.name
FROM CITY
JOIN COUNTRY ON CITY.countrycode = COUNTRY.code
WHERE COUNTRY.continent = 'Africa';