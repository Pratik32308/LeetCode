# Write your MySQL query statement below
SELECT c.name Customers
FROM Customers c
Left JOIN Orders o
ON c.id = o.customerId
WHERE o.id is NULL;