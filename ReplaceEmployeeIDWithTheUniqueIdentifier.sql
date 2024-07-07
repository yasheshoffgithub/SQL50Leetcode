# Write your MySQL query statement below
select unique_id,name from Employees LEFT JOIN EmployeeUNI ON Employees.id=EmployeeUNI.id;
#natural join is not able to handle null fields after we apply condition using where clause