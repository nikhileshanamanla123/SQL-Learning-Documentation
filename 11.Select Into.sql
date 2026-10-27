SELECT * FROM DimProduct

-- copy table in different table
SELECT * INTO DimProduct_bk FROM DimProduct

SELECT * INTO DimProduct_bk2 FROM DimProduct
WHERE color ='RED'

SELECT ProductKey,EnglishProductName,ListPrice 
INTO DimProduct_bk3 FROM DimProduct

-- TO copy only schema
SELECT * INTO DimProduct_bk4 FROM DimProduct
WHERE 1=2



