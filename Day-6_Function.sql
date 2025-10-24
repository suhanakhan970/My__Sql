use my_sql;
-- FUNCTIONS-----
    -- INBUILT FUNCTION
    
-- Text Function
-- Numerical Function
-- Date Function



-- 1. Text Function
-- UPPER,LOWER,LEN,LEFT,RIGHT,SUBTRIM
select * from orders;
---- UPPER,LOWER----
select City,lower(City) as LCity ,upper(City) as UCity from orders;
--- LEFT,RIGHT---
select 'Order ID',left([Order ID],1) as LData,right([Order ID],5) as RData from orders;
--- substring
select 'Order ID',substring('Order ID',4,4) as middata from orders;
---- len
select length('Order ID') from orders;
----- AGGREGATE FUNCTION----
--- sum,min,max,count,avg--
--- return single value--
-- apply on simgle col--
-- select sum(sales),sum(quantity) from orders;
--- select min(sales),max(quantity) from orders;
-- select avg(sales),count(quantity) from orders;
select year([ORDER DATE]) from orders;





----- DATE FUNCTIONS-----
-- select GETDATE()
SELECT now();

--- YEAR,DAY,date
select now(),year(now()),date(now()),day(now()),month(now());
--- DATED ID
--- DATE ADD





