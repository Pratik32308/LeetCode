# Write your MySQL query statement below
SELECT customer_id,COUNT(customer_id) count_no_trans
FROM Visits V LEFT JOIN Transactions T
ON V.visit_id=T.visit_id
WHERE transaction_id is NULL
GROUP BY customer_id;