# Write your MySQL query statement below
SELECT 
E.employee_id,E.name,COUNT(E2.reports_to) reports_count,ROUND(SUM(E2.age)/COUNT(*),0) average_age
FROM Employees E  JOIN Employees E2
ON E.employee_id=E2.reports_to
GROUP BY E.employee_id
ORDER BY E.Employee_id;