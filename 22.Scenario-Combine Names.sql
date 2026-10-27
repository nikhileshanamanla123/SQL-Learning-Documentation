SELECT EmployeeKey,FirstName,MiddleName,LastName
FROM DimEmployee

SELECT FirstName + ' ' + LastName
FROM DimEmployee

SELECT FirstName +SPACE(1)+ ISNULL(MiddleName,'')
+ SPACE(1) +LastName
FROM DimEmployee

SELECT ISNULL(NUll,1)
SELECT ISNULL(100,1)

SELECT CONCAT(FirstName,SPACE(1),MiddleName,SPACE(1),LastName) FROM DimEmployee

SELECT CONCAT_WS(SPACE(1),FirstName,MiddleName,LastName) FROM DimEmployee

SELECT CONCAT_WS('-',FirstName,MiddleName,LastName) FROM DimEmployee

SELECT EmployeeKey,FirstName,MiddleName,LastName,
CONCAT_WS(SPACE(1),FirstName,MiddleName,LastName) FullName 
FROM DimEmployee

SELECT EmployeeKey,FirstName,MiddleName,LastName 
INTO EmployeesBK
FROM DimEmployee

SELECT * FROM EmployeesBK

ALTER TABLE EmployeesBK
ADD FullName Varchar(50)

UPDATE EmployeesBK
SET FullName=CONCAT_WS(SPACE(1),FirstName,MiddleName,LastName)
