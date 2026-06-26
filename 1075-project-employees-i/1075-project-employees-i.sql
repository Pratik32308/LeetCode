# Write your MySQL query statement below
SELECT P.project_id,
ROUND(SUM(E.experience_years)/COUNT(*),2) average_years
FROM Employee E Right JOIN Project P
ON E.employee_id=P.employee_id
GROUP BY P.project_id;