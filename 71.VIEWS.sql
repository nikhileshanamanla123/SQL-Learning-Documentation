CREATE VIEW VwSelectData
AS 
SELECT ProductKey,EnglishProductName,ListPrice FROM DimProduct

SELECT * FROM VwSelectData

CREATE VIEW VwDailyProductSales
AS
SELECT P.EnglishProductName,F.OrderDate,
SUM(F.SalesAmount) TotalSales
FROM FactInternetSales F JOIN DimProduct P 
ON F.ProductKey=P.ProductKey
GROUP BY P.EnglishProductName,F.OrderDate

SELECT * FROM VwDailyProductSales


ALTER VIEW VwSelectData
AS 
SELECT ProductKey,EnglishProductName,ListPrice,Color FROM DimProduct

DROP VIEW VwSelectData

-- ERROR CODE
CREATE VIEW VwDailyProductSales
AS
SELECT P.EnglishProductName,F.OrderDate,
SUM(F.SalesAmount) TotalSales
FROM FactInternetSales F JOIN DimProduct P 
ON F.ProductKey=P.ProductKey
GROUP BY P.EnglishProductName,F.OrderDate
ORDER BY OrderDate

SELECT * FROM VwDailyProductSales
ORDER BY OrderDate



/*
LIMITATION
1. ORDER BY IS NOT USE DIRECTLY 
*/