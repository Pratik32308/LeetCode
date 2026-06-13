# Write your MySQL query statement below
SELECT D.name Department,E.name Employee,E.salary Salary
FROM Employee E
LEFT JOIN Department D 
ON E.departmentId=D.id
WHERE (
    SELECT COUNT(DISTINCT E2.salary)
    FROM Employee E2
    WHERE E2.departmentId = E.departmentId
      AND E2.salary > E.salary
) < 3;