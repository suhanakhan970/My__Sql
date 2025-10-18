use my_sql
select * from employeedata;
-- WHERE CLAUSE
-- PROJECTION-Fetch the records with condition
-- Operator
-- 1.Relational op or comparison op (single condition)
--   a: Text (=,!=,<>)
--   b: Numerical (=,!=,<>,>=,<=,between---and
--   c: Date (=,!=,<>,between--and
-- 2. Logical op (Multiple Condition or criteria)
--    a: AND-(All True)
--    b: OR-(Any True)
--    c: NOT:True>False,False<True
-- 3. List Op OR Membership
--      in
-- 4. Patter op or Wild Card optimize
--     a: begin with
--     b:end with
--     c:betwen
-- 5. Null Op
--      --is
-- 1.Relational op or comparison op (single condition)
-- Text
--------- Find the records for city ='Pune'
select 'Date Of joining',Gender,Age from employeedata where City="Pune";
--------- Find Other than  this city
select 'Date Of joining',Gender,Age from employeedata where City<>"Pune";
-- Numerical
-- Find the records for where ExperienceInCurrentDomain>2
select City,Age,Education from employeedata WHERE ExperienceInCurrentDomain>2;
---- Find the records for where Gender="Female"
select City,Age,Education from employeedata WHERE Gender="Female";

---- Find the records for where Age between 24TO 27
 select City,Age,Education from employeedata WHERE Age between 24 and 27;
 ----- DATE

---- FIND THE RECORDS FOR THIS DateOf Joining 2016-10-11
 select Education,City,Age,Gender from employeedata WHERE 'Date Of joining' = '03-05-2016';
 select Education,City,Age,Gender from employeedata WHERE 'Date Of joining' <> '03-05-2016';
  select Education,City,Age,Gender from employeedata WHERE 'Date Of joining' between '03-05-2016' and '05-05-2017';
  ---- List Operators : in
  select City,Age,Education from employeedata WHERE Age in (24,27);
  select City,Age,Education from employeedata WHERE Education in ("PHD");
  ---- Pattern or wild card : like

--- begin with   :  'char%'
 select City,Age,Education from employeedata WHERE City like 'P%';
  select City,Age,Education from employeedata WHERE City like 'N%';
  ---- end with :  '%char'
  select City,Age,Education from employeedata WHERE City like '%i';
  ---- between :  '%CHAR%'
             -- : begin , end , between	
select City,Age,Education from employeedata WHERE City like 'P%%e';
------- NULL OPERATORS ----
                   ---------- is
SELECT * FROM Sales_records WHERE sales_id ='NULL';
------------------------------------- LOGICAL OPERATORS-------------------
---- FIND THE REOCRDS CITY  'Pune'  AND Age>27
select * from employeedata where City="Pune" and Age=27;
 ---- FIND THE REOCRDS CITY  'Pune'  OR Age>27
 select * from employeedata where City="Pune" or Age=27;
 ---- FIND THE REOCRDST OTHER THAN CITY='Pune'
  select Education ,City  from employeedata where not City="Pune" ;
  
 
 

 




                   
                   

             

  
  
 

 










