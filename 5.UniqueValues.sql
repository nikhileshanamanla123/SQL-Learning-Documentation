-- for changing database
use AdventureWorksDW2025;

SELECT * FROM DimProduct

--for single column
SELECT Color FROM DimProduct

--for uniques records
SELECT DISTINCT Color FROM DimProduct

-- FOR Mulitple column unique records
SELECT DISTINCT Color,ListPrice FROM DimProduct
SELECT DISTINCT * FROM DimProduct