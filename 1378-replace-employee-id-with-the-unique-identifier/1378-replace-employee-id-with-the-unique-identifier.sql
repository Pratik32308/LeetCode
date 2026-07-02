# Write your MySQL query statement below
SELECT E1.unique_id,E.name FROM Employees E LEFT JOIN EmployeeUNI E1
ON E.id=E1.id