# Write your MySQL query statement below
SELECT email FROM Person
Group BY email
HAVING Count(email)>1;