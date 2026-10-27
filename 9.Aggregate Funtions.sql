
SELECT * FROM FactInternetSales

SELECT SUM(SalesAmount) FROM FactInternetSales

SELECT AVG(SalesAmount) FROM FactInternetSales

SELECT MIN(SalesAmount) FROM FactInternetSales

SELECT MAX(SalesAmount) FROM FactInternetSales

--To give aggretate funtion name
SELECT SUM(SalesAmount) AS TotalSales FROM FactInternetSales
SELECT SUM(SalesAmount) AS Total_Sales FROM FactInternetSales
SELECT SUM(SalesAmount) [Total Sales] FROM FactInternetSales

-- multiple columns
SELECT SUM(SalesAmount) AS TotalSales,
AVG(SalesAmount) AS AvgSales
FROM FactInternetSales

--count total rows (same method,output)
SELECT count(*) FROM FactInternetSales
SELECT count(1) FROM FactInternetSales
SELECT count(1000) FROM FactInternetSales

-- count with null values
SELECT count(*) FROM DimProduct

-- count without null values
SELECT count(ListPrice) FROM DimProduct

SELECT * FROM DimProduct
WHERE ListPrice is null

SELECT * FROM DimProduct
WHERE ListPrice is not null