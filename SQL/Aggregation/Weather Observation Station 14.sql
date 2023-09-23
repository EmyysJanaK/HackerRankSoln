-- Query to find the maximum latitude of stations with latitude less than 137.2345
-- This SQL query retrieves the maximum latitude (LAT_N) from the STATION table
-- where the latitude is less than 137.2345.
SELECT ROUND(MAX(LAT_N), 4)
FROM STATION
WHERE LAT_N < 137.2345;