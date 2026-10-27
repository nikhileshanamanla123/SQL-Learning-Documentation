----------------------------------------
-- for another column null values
----------------------------------------
CREATE TABLE Employees(
	EmployeeID int Primary key,
	EmployeeName varchar(100),
	DOJ datetime,
	Salary float
)

INSERT INTO employees VALUES (1,'RAKESH','2023-1-12',40000)

SELECT * FROM employees

INSERT INTO employees(EmployeeID,EmployeeName,DOJ,Salary) 
VALUES (2,NULL,'2023-1-12',40400)

----------------------------------------
-- Except primary key 
----------------------------------------
CREATE TABLE Employees2(
	EmployeeID int Primary Key,
	EmployeeName varchar(100) NOT NULL,
	DOJ datetime NOT NULL,
	Salary float NOT NULL
)

INSERT INTO employees VALUES (1,'RAKESH','2023-1-12',40000)

SELECT * FROM employees

INSERT INTO employees(EmployeeID,EmployeeName,DOJ,Salary) 
VALUES (2,'AMAN','2023-1-12',40400)