use my_sql
select * from Salary;
select * from employee1;
-- 1. inner join 
---- fetch common records from both table on the base of common column
select * from employee1 INNER JOIN Salary on employee1.ID=salary.ID;
-- 2. left join
----- fetch all record from left table but only common records from right table on the base of common column
select * from employee1 LEFT JOIN salary on employee1.ID=salary.id;
-- 3. Right join
----- fetch all record from right table but only common record from left table
select * from employee1 right join salary on employee1.ID=salary.id;
-- 4. full outer join
----  fetch all record from all table unmatch record on both sides show as null on the base of column
select * from employee1 FULL OUTER JOIN  salary on employee1.ID=salary.id;
---- 5. cross join
---- cross product of both table
--- m*n record
---- only join which no need of common column
select * from employee1 cross join salary;
select * from dept;
select * from employee1 inner join dept on employee1.DEPTID=dept.DEPTID;
