-- SQL Query to find the earliest project start date and the corresponding end date
-- This SQL query retrieves the earliest project start date and the corresponding end date

SELECT s.Proj_Start_Date, min(e.Proj_End_Date) as Real_Proj_End_Date 
FROM
(SELECT Start_Date as Proj_Start_Date FROM Projects WHERE Start_Date NOT IN (SELECT End_Date FROM Projects)) s,
(SELECT End_Date as Proj_End_Date FROM Projects WHERE End_Date NOT IN (SELECT Start_Date FROM Projects)) e
WHERE s.Proj_Start_Date < e.Proj_End_Date
GROUP BY s.Proj_Start_Date
ORDER BY DATEDIFF(min(e.Proj_End_Date), s.Proj_Start_Date) ASC, s.Proj_Start_Date ASC;
