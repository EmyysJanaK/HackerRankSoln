-- This SQL query selects the names of students who have marks greater than 75,
-- and orders them by the last three characters of their names in ascending order,
-- followed by their IDs in ascending order.

SELECT NAME
FROM STUDENTS
WHERE MARKS > 75
ORDER BY RIGHT(NAME, 3), ID ASC;
