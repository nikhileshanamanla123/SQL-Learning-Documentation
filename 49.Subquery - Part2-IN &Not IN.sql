

SELECT * FROM FactInternetSales F JOIN DimProduct P
ON F.ProductKey=P.ProductKey
WHERE P.Color ='RED'

SELECT * FROM FactInternetSales 
WHERE ProductKey IN 
(SELECT ProductKey FROM DimProduct WHERE Color ='RED')

SELECT * FROM FactInternetSales 
WHERE ProductKey NOT IN 
(SELECT ProductKey FROM DimProduct WHERE Color ='RED')



