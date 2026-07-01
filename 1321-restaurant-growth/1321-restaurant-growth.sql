# Write your MySQL query statement below
SELECT visited_on, amount,average_amount
FROM (
    SELECT DISTINCT visited_on,
    SUM(amount)OVER(ORDER BY visited_on Range BETWEEN interval 6 DAY PRECEDING AND CURRENT ROW) amount,
    ROUND(SUM(amount)OVER(ORDER BY visited_on Range BETWEEN interval 6 DAY PRECEDING AND CURRENT ROW)/7,2) average_amount
    FROM Customer
) C
WHERE DATEDIFF(visited_on,(SELECT MIN(visited_on) FROM Customer))>=6;