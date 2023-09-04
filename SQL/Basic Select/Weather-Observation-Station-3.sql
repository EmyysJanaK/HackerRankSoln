-- Query to find distinct cities from the STATION table where the ID is even
-- This SQL query retrieves distinct city names from the STATION table
SELECT DISTINCT CITY
FROM STATION
WHERE ID % 2 = 0;