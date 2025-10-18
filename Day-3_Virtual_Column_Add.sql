-- VIRTUAL COLUMN
-- 1.Flate Value COL
-- 2. Custom Column Equation Base Column
-- 3. Conditional Column


-- 1. Flate Value Column
-- select */colm list,value,data from table_name
use my_sql
select * from employeedata;
select City,Age,Gender,"Noida" as Location,"India" as Countary ,91 as Ccode from employeedata;
-------- custom column or refrence colm------
select City,PaymentTier,PaymentTier*0.10 as Incentive from employeedata;
select City,PaymentTier,Age,PaymentTier-Age as diffrence from employeedata;
----- Conditional Column------
--- Age>=38 "High"
--- Age>=30 "MID"
--- Age<=24 "low"
select City ,Age, 
  Case
    When Age>=38 then "high"
    when Age>=30 then"mid"
    when Age<=24 then "low"
  end
from employeedata;
select City ,Age, PaymentTier,
Case
    When Age>=38 then PaymentTier*0.20 
    when Age>=30 then PaymentTier*0.30
    when Age<=24 then PaymentTier*0.40
end
from employeedata;


select City ,Age, 
  Case
    When Age>=38 then "high"
    when Age>=30 then"mid"
    when Age<=24 then "low"
  end
from employeedata;





