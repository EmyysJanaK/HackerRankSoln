-- This SQL query counts the number of cities in the CITY table that have a population greater than 100,000.
-- It retrieves the total count of such cities without any additional filtering.
SELECT COUNT(*) 
FROM CITY 
WHERE POPULATION > 100000