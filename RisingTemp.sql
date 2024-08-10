# Write your MySQL query statement below
select w1.id from Weather as w1,Weather as w2 where (dateDiff(w1.recordDate,w2.recordDate) = 1 and w1.temperature > w2.temperature);
#using dateDiff or DATE_SUB works but not direct subtraction bcz it is not valid operqtion