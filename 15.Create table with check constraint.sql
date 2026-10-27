-- applying condition on column in table
-- char is fixed length and varchar is variable lenght
CREATE TABLE Employees(
	EmployeeID int,
	EmployeeName varchar(100),
	DOJ datetime,
	Salary float check(Salary>=10000),
	Gender char(1) check(Gender ='M' or Gender='F' or Gender='O')
--	Gender char(1) check(Gender IN('M','F','O'))

)

INSERT INTO employees(EmployeeID,EmployeeName,DOJ,Salary,Gender) 
VALUES (1,'AMAN','2023-1-12',100000,'M')
INSERT INTO employees(EmployeeID,EmployeeName,DOJ,Salary,Gender) 
VALUES (2,'AMAN','2023-1-12',100000,'F')
INSERT INTO employees(EmployeeID,EmployeeName,DOJ,Salary,Gender) 
VALUES (3,'AMAN','2023-1-12',100000,'O')
INSERT INTO employees(EmployeeID,EmployeeName,DOJ,Salary,Gender) 
VALUES (1,'AMAN','2023-1-12',100000,'X')
SELECT * FROM Employees