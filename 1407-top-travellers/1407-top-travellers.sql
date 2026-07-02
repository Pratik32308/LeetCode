# Write your MySQL query statement below
SELECT U.name,IFNULL(SUM(R.distance),0) travelled_distance
FROM Users U LEFT JOIN Rides R
ON U.id=R.user_id
GROUP BY U.id
ORDER BY SUM(distance) DESC,name;