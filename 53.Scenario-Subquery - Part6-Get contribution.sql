SELECT SUM(SalesAmount) FROM FactInternetSales

SELECT YEAR(OrderDate) OrderYear,SUM(SalesAmount) TotalSales
FROM FactInternetSales
GROUP BY YEAR(OrderDate)

SELECT YEAR(OrderDate) OrderYear,SUM(SalesAmount) TotalSales,
(SELECT SUM(SalesAmount) FROM FactInternetSales)
FROM FactInternetSales
GROUP BY YEAR(OrderDate)


SELECT YEAR(OrderDate) OrderYear,SUM(SalesAmount) TotalSales,
FORMAT(SUM(SalesAmount)/
(SELECT SUM(SalesAmount) FROM FactInternetSales),'P') Contribution
FROM FactInternetSales
GROUP BY YEAR(OrderDate)
ORDER BY YEAR(OrderDate)
 