---- MULTIPLE TABLE--
-- Join--
-- (Join work on multiple table data fetch)
-- next topic is 
-- set operator
-- Data fetch from multiple query
-- SUBQUERYIES
-- Fetch the daat from first query based on second query


-- SET OPERATOR: Data fetch from multiple query1
-- UNION (only qnique record from both/all alterquery not duplicate record)
-- UNION ALL(this give all record allow duplicate)
-- INTERSECT(give record present in both queries)
-- EXCEPT(Rec from first query which is not present in second query)

-- Rules
-- 1. All query must have same column number
-- 2. The order of column should be same
-- 3. Order of data type in all queries should be same
-- 4. Set Operator Foloow the  1 query structure 
-- 5. Order By Apply on the on the base of first query


-- No change in col
-- no of column increse



-- SYNTAX
-- select col1,col2,col3 from table -query 1
-- UNION
--  select col4,col2,col3 from table -query 2
-- 
--
use my_sql;
select * from employesalary_details
union
select * from dept;

-- UNION ALL
select * from employesalary_details
union all
select * from dept;


-- Intersect
select ID from employesalary_details
INTERSECT
select DEPID from de ;

-- ACEPT
select ID from employesalary_details
except
select ID from employee1;
---- where clause
-- condition apply seperatly on each query
select * from employesalary_details where id>2
union
select * from dept where DEPTID>2;


