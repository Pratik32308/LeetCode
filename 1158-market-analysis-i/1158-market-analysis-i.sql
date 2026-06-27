# Write your MySQL query statement below
SELECT U.user_id buyer_id,U.join_date,COUNT(buyer_id) orders_in_2019
FROM Users U LEFT JOIN Orders O
ON U.user_id=O.buyer_id
AND YEAR(order_date)='2019'
GROUP BY user_id;