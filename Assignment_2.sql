use assignment_1
select * from product;
--- QUESTION_1--
--- evaluate sales performance based on quantity sold and unit price-- 
select SaleId,ProductName,UnitsSold,UnitPrice,CostPrice,'monthly report' AS reportType,(UnitPrice - CostPrice) * UnitsSold AS TotalProfit ,
CASE
  when (UnitPrice - CostPrice) * UnitsSold >=5000 then 'HighProfit'
  when (UnitPrice - CostPrice) * UnitsSold  between 2000 and 4999 then 'Medium Profit'
  else 'low profit'
end as profitCategory
from product;

--- QUESTION 2--
select SaleId,ProductName,UnitsSold,UnitPrice,CostPrice,'Revenue report' AS reportType, UnitsSold*UnitPrice AS TotalRevenue ,
CASE
  when UnitsSold*UnitPrice <=10000 then 'TopSeller'
  when UnitsSold*UnitPrice between 5000 and 9999 then 'AverageSeller'
else 'lowSeller'

end as RevenueCategory
from product;
---- Question 3--
select SaleId,ProductName,UnitsSold,UnitPrice,CostPrice,'Cost Analysis' AS reportType, UnitsSold*CostPrice AS TotalCost,((UnitPrice-CostPrice)/UnitPrice)*100 as ProfitMargin,
CASE
  when  ((UnitPrice-CostPrice)/UnitPrice)*100>=30 then 'Highmargin'
  when ((UnitPrice-CostPrice)/UnitPrice)*100 between 15 and 29 then 'Averagemargin'
else 'lowmargin'

end as MarginCategory
from product;


--- Question 4
SELECT SaleId,ProductName,UnitsSold,UnitPrice,CostPrice,
    

    -- 1️⃣ Add flat column
    'Performance Report' AS ReportType,

    -- 2️⃣ Equation column (Average Sale Value per Unit)
    UnitPrice AS AvgSaleValuePerUnit,

    -- 3️⃣ Conditional column based on quantity sold
    CASE
        WHEN UnitsSold >= 30 THEN 'Fast Mover'
        WHEN UnitsSold BETWEEN 15 AND 29 THEN 'Moderate Mover'
        ELSE 'Slow Mover'
    END AS SalesPerformance

FROM product;
