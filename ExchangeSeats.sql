# Write your MySQL query statement below
select
case when mod(id,2)=0 then id-1
when mod(id,2)=1 and id+1 not in (select id from seat) then id #to check if it is last and odd
else id+1 end as id, #if odd and not last then take next id
student
from seat order by id #finally sort the table to get it ordered by id