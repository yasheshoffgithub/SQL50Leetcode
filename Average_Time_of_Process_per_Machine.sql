# Write your MySQL query statement below
#approach-1 using 2 copies of the given table and calculate the differnece
-- SELECT a.machine_id, 
--        ROUND(AVG(b.timestamp - a.timestamp), 3) AS processing_time
-- FROM Activity a, 
--      Activity b
-- WHERE 
--     a.machine_id = b.machine_id
-- AND 
--     a.process_id = b.process_id
-- AND 
--     a.activity_type = 'start'
-- AND 
--     b.activity_type = 'end'
-- GROUP BY machine_id;
#approach-2 using SUM and changing all start timestamps with negative value and counting no of processes of each machine
SELECT 
    machine_id,
    ROUND(SUM(CASE WHEN activity_type='start' THEN timestamp*-1 ELSE timestamp END)*1.0
    / (SELECT COUNT(DISTINCT process_id)),3) AS processing_time
FROM 
    Activity
GROUP BY machine_id