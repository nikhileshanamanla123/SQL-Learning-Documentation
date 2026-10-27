/* Invalid syntax
SELECT ProductKey,sum(SalesAmount) TotalSales FROM FactInternetSales
*/

-- in group by involes column which doesnot have agg 
SELECT ProductKey,sum(SalesAmount) TotalSales 
FROM FactInternetSales
GROUP BY ProductKey

SELECT ProductKey,sum(SalesAmount) TotalSales,
SUM(TaxAmt) TotalTax
FROM FactInternetSales
GROUP BY ProductKey

SELECT ProductKey,customerkey,sum(SalesAmount) TotalSales
FROM FactInternetSales
GROUP BY ProductKey,customerkey