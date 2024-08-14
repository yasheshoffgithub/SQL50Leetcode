# Write your MySQL query statement below
select contest_id,ROUND((COUNT(DISTINCT register.user_id)/( SELECT COUNT(DISTINCT user_id)FROM USERS))*100,2) as percentage
from register left join users
on register.user_id=users.user_id
group by contest_id
order by percentage DESC,contest_id ASC;