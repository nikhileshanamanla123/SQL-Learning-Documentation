
SELECT * FROM FactInternetSales
WHERE ProductKey IN (
SELECT ProductKey FROM DimProduct WHERE Color='RED')

SELECT * FROM FactInternetSales
WHERE EXISTS(
SELECT ProductKey FROM DimProduct WHERE Color='RED')

SELECT * FROM FactInternetSales
WHERE NOT EXISTS(
SELECT ProductKey FROM DimProduct WHERE Color='RED')

--CO-RELATED SUBQUERY
SELECT * FROM FactInternetSales F
WHERE EXISTS(SELECT ProductKey FROM DimProduct P 
WHERE F.ProductKey=P.ProductKey AND Color='RED')









