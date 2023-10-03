-- Contest Leaderboard
-- This query retrieves the leaderboard for a coding contest, showing each hacker's total score
-- based on their highest submission scores for each challenge.
-- It aggregates the scores by hacker and orders the results by total score in descending order,
-- with ties broken by hacker ID in ascending order.
SELECT h.hacker_id, h.name, SUM(MAX_SCORE.t1) AS total_score
FROM Hackers h
INNER JOIN
(
    SELECT MAX(s.score) AS t1, s.hacker_id
    FROM Submissions s
    GROUP BY s.challenge_id, s.hacker_id
    HAVING t1 > 0
) AS MAX_SCORE
ON h.hacker_id = MAX_SCORE.hacker_id
GROUP BY h.hacker_id, h.name
ORDER BY total_score DESC, hacker_id ASC
