----------------------------------------------------------
-- WITHOUT PRIMARY KEY
----------------------------------------------------------

CREATE TABLE Employees(
	EmployeeID int,
	EmployeeName varchar(100),
	DOJ datetime,
	Salary float
)

INSERT INTO employees VALUES (1,'RAKESH','2023-1-12',40000)

SELECT * FROM employees

INSERT INTO employees(EmployeeID,EmployeeName,DOJ,Salary) 
VALUES (1,'AMAN','2023-1-12',40400)

----------------------------------------------------------
-- WITH PRIMARY KEY 
----------------------------------------------------------
-- for one table only one primary key
 
CREATE TABLE Employees_NEW(
	EmployeeID int PRIMARY KEY,
	EmployeeName varchar(100),
	DOJ datetime,
	Salary float
)


INSERT INTO employees VALUES (1,'RAKESH','2023-1-12',40000)

SELECT * FROM employees

-- Error bcos duplicate not allowed 
INSERT INTO employees(EmployeeID,EmployeeName,DOJ,Salary) 
VALUES (1,'AMAN','2023-1-12',40400)

INSERT INTO employees(EmployeeID,EmployeeName,DOJ,Salary) 
VALUES (NULL,'Ram','2023-1-12',44000)