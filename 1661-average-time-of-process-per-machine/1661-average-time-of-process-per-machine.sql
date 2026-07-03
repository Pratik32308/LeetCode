# Write your MySQL query statement below
SELECT 
machine_id,
ROUND(SUM(CASE WHEN activity_type='end' THEN timestamp else -timestamp end)/COUNT(DISTINCT process_id),3) processing_time
FROM Activity
GROUP BY machine_id;