-- Query to find the sum of LAT_N for stations within a specific latitude range
-- This SQL query calculates the sum of LAT_N for all stations
-- that have a latitude between 38.7880 and 137.2345.
SELECT ROUND(SUM(LAT_N), 4)
FROM STATION
WHERE LAT_N > 38.7880 AND LAT_N < 137.2345;