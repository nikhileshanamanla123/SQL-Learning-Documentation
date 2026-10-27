--Sorting in Ascending(default operation)
SELECT * FROM DimProduct
ORDER BY Color ASC

--Sorting in descending
SELECT * FROM DimProduct
ORDER BY Color DESC

-- for multiple columns
SELECT ProductKey,EnglishProductName,Color,ListPrice 
FROM DimProduct
ORDER BY Color,ListPrice 

SELECT ProductKey,EnglishProductName,Color,ListPrice 
FROM DimProduct
ORDER BY Color DESC,ListPrice DESC

--not in select statement 
SELECT ProductKey,EnglishProductName,Color
FROM DimProduct
ORDER BY ListPrice

-- Sorting by columns numbers
SELECT ProductKey,EnglishProductName,Color
FROM DimProduct
ORDER BY 1 DESC

SELECT ProductKey,EnglishProductName,Color
FROM DimProduct
ORDER BY 3 DESC

SELECT ProductKey,EnglishProductName,Color
FROM DimProduct
ORDER BY 2,3 

-- single line comments

/*
multiple line
comments*/