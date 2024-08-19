# Write your MySQL query statement below
select a.person_name from queue a left join queue b 
on a.turn>=b.turn 
GROUP BY a.person_name having sum(b.weight)<=1000
order by sum(b.weight) desc
limit 1;