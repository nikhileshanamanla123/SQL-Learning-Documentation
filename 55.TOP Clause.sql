
SELECT TOP 10 * FROM DimProduct

SELECT TOP 100 ProductKey,EnglishProductName,ListPrice FROM DimProduct

SELECT TOP 10 * FROM DimProduct
ORDER BY ProductKey DESC

SELECT * FROM(
SELECT TOP 10 * FROM DimProduct
ORDER BY ProductKey DESC)T
ORDER BY ProductKey

SELECT TOP 10 PERCENT * FROM DimProduct

