-- Write a SQL query to find the longitude of the station with the lowest latitude that is greater than 38.7780.
-- -- This SQL query retrieves the longitude (LONG_W) of the station
SELECT ROUND(LONG_W, 4)
FROM STATION
WHERE LAT_N = (
    SELECT MIN(LAT_N)
    FROM STATION
    WHERE LAT_N > 38.7780);