-- This SQL query retrieves the number of distinct employees, managers, senior managers, and lead managers
-- for each company, along with the company code and founder.
-- It joins the Company, Lead_Manager, Senior_Manager, Manager, and Employee tables
-- based on their respective codes and filters the results to group by company code and founder.
SELECT c.company_code,c.founder,
count(distinct lm.lead_manager_code),
count(distinct sm.senior_manager_code),
count(distinct m.manager_code), 
count(distinct e.employee_code)
FROM Company c, Lead_Manager lm, Senior_Manager sm, Manager m, Employee e
WHERE
c.company_code=lm.company_code AND
lm.lead_manager_code=sm.lead_manager_code AND
sm.senior_manager_code=m.senior_manager_code AND
m.manager_code=e.manager_code
GROUP BY c.company_code,c.founder
ORDER BY c.company_code ASC