-- Query to find the minimum latitude of stations with latitude greater than 38.7780        
-- This SQL query retrieves the minimum latitude (LAT_N) from the STATION table

SELECT ROUND(MIN(LAT_N), 4) 
FROM STATION
WHERE LAT_N > 38.7780;