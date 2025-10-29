--- SUBQUERIES---
-- OUTER QUERY
-- INNER QUERY
-- PRIMARY QUERY
-- SECONDARY QUERY

-- SYNTAX---
-- OUTER QUERY OR PRIMARY QUERY WHERE COLUMN_NAME OPERATOR(SECONDARY QUERY)


-- OUTPUT COMES FROM OUTER QUERY/PRIMARY QUERY ON THE BASE OF SECONDARY
-- Secondary query work as a filter for primary query
-- no o/p come from secondary query
use my_sql;
select * from employee1;
select ID from employee1 where DEPTID=3;



--- CASE 2- MULTIPLE VALUE(MULTIPLE ROW BUT SINGLE COL)
SELECT ID FROM employee1 where DEPTID<4;

--- CASE 2- MULTIPLE VALUE(MULTIPLE ROW BUT MULTIPLE COL)
SELECT * FROM employee1 where DEPTID<4;
SELECT  * FROM employee1;
SELECT * FROM employesalary_details;

------------------ PERSON NAME FROM EMPLOYE ,SALARY =560000------------
-- APPLY SUBQUERIES
select id from salary where salary=56000;
select NAME from employee1 where ID = (select id from salary where salary=56000);
--- this is primary-------------         ----- secondary query---------

------------------  find person name from employe whose salart other then 56000-------
select NAME from employee1 where ID <> (select id from salary where salary=56000);
-- secondary query output single data use less then equal to etch
-- if multiple output



------ waq to find the employe name whose salary less then 56000----------
select id from salary where salary<56000; ---- this is our secondary query
select Name from employee1 where id in (select id from salary where salary<56000);-- not work bec multiple value in secondary query
 -- then we can use in operator
 
select * from employee1 where id in (select * from salary where salary<56000);


------------ give person name whose salry above then average-----------
select *from employee1 inner join salary on employee1.ID=salary.ID
where salary=56000--- solve upper vali with join




