-- and limits the result to only one row.
-- This SQL query retrieves the shortest city name from the STATION table.
-- It selects the CITY and its length, orders the results by the length of the city name in ascending order,
SELECT CITY, LENGTH(CITY)
FROM STATION
ORDER BY LENGTH(CITY) ASC, CITY ASC
LIMIT 1;

-- This SQL query retrieves the longest city name from the STATION table.
-- It selects the CITY and its length, orders the results by the length of the city name in descending order,
SELECT DISTINCT CITY, LENGTH(CITY)
FROM STATION
ORDER BY LENGTH(CITY) DESC, CITY ASC
LIMIT 1;