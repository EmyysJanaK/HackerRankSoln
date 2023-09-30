-- This SQL query calculates the average population of cities in each continent
-- by joining the COUNTRY and CITY tables, grouping by CONTINENT,
SELECT COUNTRY.CONTINENT, FLOOR(AVG(CITY.POPULATION))
FROM COUNTRY
JOIN CITY ON CITY.COUNTRYCODE = COUNTRY.CODE
GROUP BY COUNTRY.CONTINENT;