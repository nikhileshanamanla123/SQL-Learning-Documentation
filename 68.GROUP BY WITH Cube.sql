SELECT YEAR(OrderDate) OrderYear, SUM(SalesAmount) TotalSales
FROM FactInternetSales
GROUP BY YEAR(OrderDate)

SELECT YEAR(OrderDate) OrderYear, SUM(SalesAmount) TotalSales
FROM FactInternetSales
GROUP BY ROLLUP(YEAR(OrderDate))

SELECT YEAR(OrderDate) OrderYear, SUM(SalesAmount) TotalSales
FROM FactInternetSales
GROUP BY CUBE(YEAR(OrderDate))

SELECT YEAR(OrderDate) OrderYear, FORMAT(OrderDate,'MMM') MONTHNm,
SUM(SalesAmount) TotalSales
FROM FactInternetSales
GROUP BY CUBE(YEAR(OrderDate),FORMAT(OrderDate,'MMM'))
