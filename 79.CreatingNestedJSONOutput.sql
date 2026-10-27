SELECT TOP 10 P.ProductKey,P.EnglishProductName,P.ListPrice,F.SalesAmount 
FROM DimProduct P JOIN FactInternetSales F
ON P.ProductKey=F.ProductKey
FOR JSON PATH

SELECT TOP 10 P.ProductKey,
P.EnglishProductName AS "Detail.ProductName",
P.ListPrice AS "Detail.Price",
F.SalesAmount 
FROM DimProduct P JOIN FactInternetSales F
ON P.ProductKey=F.ProductKey
FOR JSON PATH


SELECT TOP 10 P.ProductKey,
P.EnglishProductName AS "Detail.ProductName",
P.ListPrice AS "Detail.Price",
p.StartDate as "Date.Start",
F.SalesAmount 
FROM DimProduct P JOIN FactInternetSales F
ON P.ProductKey=F.ProductKey
FOR JSON PATH


SELECT TOP 10 P.ProductKey,
P.EnglishProductName AS "Detail.ProductName",
P.ListPrice AS "Detail.Price",
p.StartDate as "Date.Start.StartDate",
F.SalesAmount 
FROM DimProduct P JOIN FactInternetSales F
ON P.ProductKey=F.ProductKey
FOR JSON PATH
