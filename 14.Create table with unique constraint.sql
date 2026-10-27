CREATE TABLE Employees(
	EmployeeID int Primary key,
	EmployeeName varchar(100),
	DOJ datetime,
	Salary float,
	Email varchar(100) unique
)

INSERT INTO employees VALUES (1,'RAKESH','2023-1-12',40000,'rakesh@gmail.com')

-- takes only one null values in column
INSERT INTO employees(EmployeeID,EmployeeName,DOJ,Salary,Email) 
VALUES (2,'AMAN','2023-1-12',40400,null)

-- duplicate not allowed 
INSERT INTO employees(EmployeeID,EmployeeName,DOJ,Salary,Email) 
VALUES (2,'AMAN','2023-1-12',40400,null)

SELECT * FROM employees

-- unique can apply on 999 columns
CREATE TABLE Employees2(
	EmployeeID int Primary key,
	EmployeeName varchar(100),
	DOJ datetime,
	Salary float,
	Email varchar(100) unique not null,
	pan varchar(100) unique
)