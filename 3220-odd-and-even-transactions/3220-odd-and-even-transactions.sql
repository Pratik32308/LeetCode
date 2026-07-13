# Write your MySQL query statement below
SELECT transaction_date,
IFNULL(SUM(CASE WHEN amount%2=1 THEN amount END),0) odd_sum,
IFNULL(SUM(CASE WHEN amount%2=0 THEN amount END),0) even_sum
FROM transactions
GROUP BY transaction_date
ORDER BY transaction_date;