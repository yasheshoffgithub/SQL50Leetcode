# Write your MySQL query statement below
(select name as results
from users u left join movierating mr
on u.user_id=mr.user_id
group by u.user_id
order by count(distinct mr.movie_id) desc,name asc
limit 1)
UNION ALL
(select title as results
from movies m left join movierating mr
on m.movie_id=mr.movie_id
where month(mr.created_at)=02 and year(mr.created_at)=2020
group by m.movie_id
order by AVG(mr.rating) desc,title asc
limit 1);