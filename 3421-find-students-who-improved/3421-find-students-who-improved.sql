# Write your MySQL query statement below
SELECT DISTINCT student_id,subject,first_score,latest_score FROM(
    SELECT *,
FIRST_VALUE(score)OVER(PARTITION BY student_id,subject ORDER BY exam_date) first_score,
LAST_VALUE(score)OVER(PARTITION BY student_id,subject ORDER BY exam_date ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING) latest_score
FROM Scores) S
WHERE first_score<latest_score
ORDER BY student_id,subject;