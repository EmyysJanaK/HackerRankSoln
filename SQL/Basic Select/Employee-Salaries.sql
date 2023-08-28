-- This SQL query selects the names of employees who have a salary greater than 2000

SELECT NAME
FROM Employee
WHERE SALARY > 2000
AND MONTHS < 10
ORDER BY EMPLOYEE_ID