# Write your MySQL query statement below
SELECT E1.name Employee FROM Employee E1
INNER JOIN Employee E2
ON E1.managerID = E2.ID
WHERE E1.salary > E2.salary ;