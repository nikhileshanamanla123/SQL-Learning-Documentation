SELECT FullName FROM EmployeesBK

SELECT FullName,CHARINDEX(' ',Fullname) FROM EmployeesBK

SELECT FullName,LEFT(FullName,CHARINDEX(' ',Fullname)-1)
FROM EmployeesBK

SELECT FullName,TRIM(LEFT(FullName,CHARINDEX(' ',Fullname))) FirstName
FROM EmployeesBK

SELECT FullName,RIGHT(FullName,
LEN(FullName)-CHARINDEX(' ',FullName,CHARINDEX(' ',Fullname)+1)) 
FROM EmployeesBK


SELECT FullName,TRIM(LEFT(FullName,CHARINDEX(' ',Fullname))) FirstName,
RIGHT(FullName,LEN(FullName)-CHARINDEX(' ',FullName,CHARINDEX(' ',Fullname)+1)) 
FROM EmployeesBK