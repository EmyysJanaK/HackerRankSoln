-- Find the names of students who have friends with a higher salary than their own package salary.
-- This SQL query retrieves the names of students who have friends with a higher salary than their own package salary.
-- It uses inner joins to connect the Students, Friends, and Packages tables.
-- The query filters the results to include only those students whose friends' salaries are greater than their own package salaries.

SELECT S.Name
FROM Students S INNER JOIN Friends F
ON S.ID = F.ID
INNER JOIN Packages P
ON F.ID = P.ID
INNER JOIN Packages FP
ON F.Friend_ID = FP.ID
WHERE FP.Salary > P.Salary
ORDER BY FP.Salary;
