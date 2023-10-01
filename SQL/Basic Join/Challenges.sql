-- This query retrieves the hacker IDs and names of hackers who have solved the maximum number of challenges.
-- It counts the number of challenges solved by each hacker and filters to include only those with the maximum count.


SELECT H.hacker_id, H.name, COUNT(C.challenge_id) AS total_count
FROM Hackers H
JOIN Challenges C ON H.hacker_id = C.hacker_id
GROUP BY H.hacker_id, H.name
HAVING total_count = 
(
SELECT COUNT(temp1.challenge_id) AS max_count
FROM challenges temp1
GROUP BY temp1.hacker_id
ORDER BY max_count DESC
LIMIT 1
) -- This subquery retrieves the maximum challenge count
OR total_count IN
(
    SELECT DISTINCT other_counts
    FROM (
        SELECT H2.hacker_id, H2.name, COUNT(C2.challenge_id) AS other_counts
        FROM Hackers H2
        JOIN Challenges C2 ON H2.hacker_id = C2.hacker_id
        GROUP BY H2.hacker_id, H2.name
) temp2
    GROUP BY other_counts
    HAVING COUNT(other_counts) = 1
)
ORDER BY total_count DESC, H.hacker_id