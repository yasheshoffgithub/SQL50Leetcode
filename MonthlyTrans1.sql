# Write your MySQL query statement below
select DATE_FORMAT(trans_date, '%Y-%m') AS month,
country,
COUNT(*)as trans_count, 
sum(case when state='approved' then 1 else 0 end )as approved_count,
SUM(amount)as trans_total_amount,
sum(case when state='approved' then amount else 0 end ) as approved_total_amount
from transactions
group by month,country;