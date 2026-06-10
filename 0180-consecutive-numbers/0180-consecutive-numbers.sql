# Write your MySQL query statement below
SELECT DISTINCT num "ConsecutiveNums"
from (
    SELECT num,
            LEAD(num,1) OVER (ORDER BY id) Prev_NUM,
            LEAD(num,2) OVER (ORDER BY id) Next_NUM
    FROM Logs
) temp
WHERE num=Prev_NUM AND num=Next_NUM;