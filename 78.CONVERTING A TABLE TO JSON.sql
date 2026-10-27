CREATE TABLE EmployeesNew(
	EmpID int primary key identity(1,1),
	EmpName varchar(100),
	City varchar(30),
	Salary money,
	DOJ datetime
)

INSERT INTO EmployeesNew(EmpName,City,Salary,DOJ) VALUES
('Sam','NYC',45000,NULL),
('Aman','Delhi',30000,'2022-01-04'),
('Jay','Chennai',40000,'2023-05-12'),
('Amanda','Sydney',60000,NULL)

SELECT * FROM EmployeesNew
FOR JSON PATH


SELECT * FROM EmployeesNew
FOR JSON PATH,INCLUDE_NULL_VALUES


SELECT * FROM EmployeesNew
FOR JSON PATH,ROOT('Employees')


SELECT * FROM EmployeesNew
FOR JSON PATH,WITHOUT_ARRAY_WRAPPER


SELECT * FROM EmployeesNew
FOR JSON PATH,INCLUDE_NULL_VALUES,WITHOUT_ARRAY_WRAPPER

SELECT 1 AS EMPID,'RAJ' AS EMPNAME
FOR JSON PATH


SELECT * FROM EmployeesNew
FOR JSON AUTO	


SELECT 1 AS EMPID,'RAJ' AS EMPNAME
FOR JSON AUTO	