
CREATE PROCEDURE sp_SelectData
AS 
SELECT * FROM DimProduct

EXECUTE sp_SelectData

------------------------------------------------------------------
CREATE PROC sp_SelectData
AS 
SELECT * FROM DimProduct

EXEC sp_SelectData

------------------------------------------------------------------
CREATE PROCEDURE sp_SelectProducts(@color VARCHAR(20))
AS 
SELECT * FROM DimProduct WHERE COLOR=@color

EXECUTE sp_SelectProducts 'Silver'

------------------------------------------------------------------
CREATE PROCEDURE sp_SelectProducts2(@color VARCHAR(20),@price MONEY)
AS 
SELECT * FROM DimProduct WHERE COLOR=@color AND ListPrice > @price 

EXECUTE sp_SelectProducts2 'Red',2000


------------------------------------------------------------------
CREATE PROCEDURE sp_SelectProducts3(@color VARCHAR(20)='RED')
AS 
SELECT * FROM DimProduct WHERE COLOR=@color 

EXECUTE sp_SelectProducts3 'WHITE'

------------------------------------------------------------------
ALTER PROCEDURE sp_SelectData
AS
SELECT ProductKey,EnglishProductName,ListPrice FROM DimProduct

EXECUTE sp_SelectData

------------------------------------------------------------------
DROP PROCEDURE sp_SelectData
