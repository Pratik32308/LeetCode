# Write your MySQL query statement below
SELECT S.score,  COUNT(S2.score) as 'rank'
from Scores S,
(SELECT DISTINCT score FROM Scores) S2
WHERE S.score<=S2.score
GROUP BY S.ID
ORDER BY S.score DESC;
