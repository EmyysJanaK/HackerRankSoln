-- Query to find the number of cities that have duplicate entries in the STATION table
-- This SQL query counts the number of cities in the STATION table that have duplicate entries.
SELECT COUNT(CITY) - COUNT(DISTINCT CITY)
FROM STATION
WHERE CITY IS NOT NULL;
