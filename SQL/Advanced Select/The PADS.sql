-- This SQL script demonstrates various advanced SELECT operations.
-- Query to find the names of all occupations in the occupations table

SELECT CONCAT(name, '(', SUBSTRING(Occupation, 1, 1), ')') AS Name
FROM occupations
ORDER BY Name;
-- Query to find the total number of each occupation in the occupations table
-- This SQL query counts the number of each occupation in the occupations table
SELECT CONCAT('There are a total of ', COUNT(occupation), ' ', LOWER(occupation), 's.') AS totals
FROM occupations
GROUP BY occupation
ORDER BY totals;