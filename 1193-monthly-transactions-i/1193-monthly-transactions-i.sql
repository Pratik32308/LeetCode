# Write your MySQL query statement below
SELECT LEFT(trans_date,7) month,country,
COUNT(id) trans_count,
COUNT(IF(state='approved',1,NULL)) approved_count,
SUM(amount) trans_total_amount,
SUM(IF(state='approved',amount,0)) approved_total_amount
FROM Transactions
GROUP BY MONTH,country;