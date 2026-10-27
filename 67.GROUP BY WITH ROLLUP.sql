SELECT YEAR(OrderDate) OrderYear, SUM(SalesAmount TotalSales
FROM FactInternetSales
GROUP BY YEAR(OrderDate)

-- GIVES GRAND TOTAL AND ALSO SORT
SELECT YEAR(OrderDate) OrderYear, SUM(SalesAmount) TotalSales
FROM FactInternetSales
GROUP BY ROLLUP(YEAR(OrderDate))

SELECT ISNULL(FORMAT(OrderDate,'yyyy'),'GRAND TOTAL') OrderYear, 
SUM(SalesAmount) TotalSales
FROM FactInternetSales
GROUP BY ROLLUP(FORMAT(OrderDate,'yyyy'))


SELECT ISNULL(FORMAT(OrderDate,'yyyy'),'GRAND TOTAL') OrderYear, 
FORMAT(OrderDate,'MMM') MONTHNM,
SUM(SalesAmount) TotalSales
FROM FactInternetSales
GROUP BY ROLLUP(FORMAT(OrderDate,'yyyy'),FORMAT(OrderDate,'MMM'))

SELECT ISNULL(FORMAT(OrderDate,'yyyy'),'GRAND TOTAL') OrderYear, 
MONTH(OrderDate) MONTHNM,
SUM(SalesAmount) TotalSales
FROM FactInternetSales
GROUP BY ROLLUP(FORMAT(OrderDate,'yyyy'),MONTH(OrderDate))

-- GIVES GRAND TOTAL AND ALSO SUBGRAND TOTAL

SELECT ISNULL(FORMAT(OrderDate,'yyyy'),'GRAND TOTAL') OrderYear, 
ISNULL(FORMAT(OrderDate,'MM'),FORMAT(OrderDate,'yyyy')+' Total') MONTHNM,
SUM(SalesAmount) TotalSales
FROM FactInternetSales
GROUP BY ROLLUP(FORMAT(OrderDate,'yyyy'),FORMAT(OrderDate,'MM'))
