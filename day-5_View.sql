use my_sql
select * from Salary;
select * from employee1;
select * from dept;
--- join where
--- dep wise total salary
select DEPTNAME,salary from  employee1 INNER join dept on employee1.DEPTID=dept.DEPTID;
--- we cannot use aggrigate or non aggregate column together so we can use group by
select DEPTNAME,sum(SALARY) from employee1 INNER join dept on employee1.DEPTID=dept.DEPTID inner join Salary on employee1.id=salary.id
group by DEPTNAME
order by DEPTNAME;
------- ANSI------
 ---- Employee1
 ----- dep
 --- wap to fetch the employee name from employee table who work in it department;
 
 select * from employee1 inner join dept on employee1.DEPTID=dept.DEPTID and DEPTNAME='IT';
 -- this ansi because using on keyword
 ----- NON ANSI SOLVE THIS PROBLEM-----
 select * from employee1,dept where employee1.DEPTID=dept.DEPTID and DEPTNAME='IT';
 ----- SELF JOIN----
 -- ONLY WHIXH CAN PERFORM ON SI GLE TABLE----
 ---- wap fetch the emplpyee whose salary arae sa,me
 select * from employesalary_details;
 select * from employesalary_details as s1 inner join employesalary_details as s2 on s1.SALARY=s2.SALARY and s1.id>s2.ID;
 
 ------ VIEW---------
 --- they are complex query we can create a view of that
 --- *complie state of query
 ---- *no orcder by
 ---- *DQL queries
 ----- *REUSE
 --- SYNTEX
--- create view view_name
--- as
--- body of view or dql queries
create view revenue
as
select 'product_name',catgry , SUM(costPrice) as ptotal,sum(sellprice) as qtotal
from products
group by catgry
having sum(sellprice)>700 

 