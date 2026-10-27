SELECT * FROM DimProduct

SELECT * FROM DimCustomer

SELECT * FROM FactInternetSales

SELECT P.EnglishProductName,F.SalesAmount 
FROM DimProduct P JOIN FactInternetSales f
ON P.ProductKey=F.ProductKey
JOIN DimCustomer C ON F.CustomerKey=C.CustomerKey

SELECT C.FirstName,P.EnglishProductName,SUM(F.SalesAmount) TotalSales 
FROM DimProduct P JOIN FactInternetSales f
ON P.ProductKey=F.ProductKey
JOIN DimCustomer C ON F.CustomerKey=C.CustomerKey
GROUP BY C.FirstName,P.EnglishProductName
