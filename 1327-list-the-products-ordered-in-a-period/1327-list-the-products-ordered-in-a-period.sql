# Write your MySQL query statement below
SELECT product_name,SUM(unit) unit FROM Products P RIGHT JOIN Orders O
ON P.product_id=O.product_id
WHERE month(order_date)=2 AND year(order_date)=2020
GROUP BY P.product_id
HAVING SUM(O.unit)>=100 