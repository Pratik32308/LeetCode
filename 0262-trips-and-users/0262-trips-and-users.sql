# Write your MySQL query statement below

SELECT
request_at Day,
round(
    (sum(case when status IN ('cancelled_by_driver','cancelled_by_client') then 1 else 0 end)/ Count(*)),2) "Cancellation Rate"
FROM Trips T 
JOIN Users U 
ON T.client_id=U.users_id AND U.banned='No'
JOIN Users D
ON D.users_id=T.driver_id AND D.banned='No'
WHERE request_at BETWEEN '2013-10-01' AND '2013-10-03'
GROUP BY request_at;