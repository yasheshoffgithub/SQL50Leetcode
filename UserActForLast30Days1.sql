# Write your MySQL query statement below
select activity_date as day,COUNT(distinct user_id)as active_users from activity
where datediff('2019-07-27',activity_date)<30 AND activity_date <= '2019-07-27' 
group by activity_date;