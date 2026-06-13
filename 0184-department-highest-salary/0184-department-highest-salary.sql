# Write your MySQL query statement below
SELECT D.name Department,E.name Employee,E.salary Salary
FROM Employee E
LEFT JOIN Department D 
ON E.departmentId=D.id
WHERE (E.departmentId,salary) IN 
(SELECT departmentId, MAX(salary) FROM Employee GROUP BY departmentId)