SELECT ProductKey,SUM(SalesAmount) TotalSales FROM FactInternetSales
WHERE SalesAmount>=100
GROUP BY ProductKey

SELECT ProductKey,SUM(SalesAmount) TotalSales FROM FactInternetSales
GROUP BY ProductKey
HAVING SUM(SalesAmount)>=100000

SELECT ProductKey,SUM(SalesAmount) TotalSales FROM FactInternetSales
WHERE YEAR(OrderDate)=2012
GROUP BY ProductKey
HAVING SUM(SalesAmount)>=100000

