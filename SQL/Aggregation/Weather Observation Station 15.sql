-- Query to find the longitude of the station with the highest latitude less than 137.2345
-- This SQL query retrieves the longitude (LONG_W) of the station
-- that has the highest latitude (LAT_N) which is less than 137.2345.
SELECT ROUND(LONG_W, 4)
FROM STATION
WHERE LAT_N = (SELECT MAX(LAT_N) FROM STATION WHERE LAT_N < 137.2345);