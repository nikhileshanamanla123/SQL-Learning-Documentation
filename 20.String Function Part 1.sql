
SELECT UPPER('hello') 

SELECT EnglishProductName,
UPPER(EnglishProductName) EnglishProductName From DimProduct


SELECT LOWER('hello') 

SELECT EnglishProductName,
LOWER(EnglishProductName) EnglishProductName From DimProduct

SELECT LEFT('HELLO',3) 

SELECT LEFT(EnglishProductName,3) FROM DimProduct

SELECT RIGHT('HELLO',3) 

SELECT RIGHT(EnglishProductName,3) FROM DimProduct

SELECT SUBSTRING('HELLO',2,3)

SELECT EnglishProductName,SUBSTRING(EnglishProductName,3,4) EnglishProductName 
FROM DimProduct

SELECT SUBSTRING('HELLO',1,3)

SELECT LEN('HE LLO   ')

SELECT EnglishProductName,LEN(EnglishProductName) EnglishProductName 
FROM DimProduct

SELECT TRIM('HE LLO  ')
SELECT EnglishProductName,TRIM(EnglishProductName) EnglishProductName 
FROM DimProduct

SELECT LTRIM('  HE LLO  ')
SELECT RTRIM('  HE LLO  ')

SELECT EnglishProductName,LTRIM(EnglishProductName) EnglishProductName 
FROM DimProduct
