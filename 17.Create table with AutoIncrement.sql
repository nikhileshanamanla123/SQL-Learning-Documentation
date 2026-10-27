-- identity(starts , step)
CREATE TABLE Employees_AutoIncrement(
	EmployeeID int Primary key identity(1,1),
	EmployeeName varchar(100),
	DOJ datetime,
	Salary float,
)

INSERT INTO Employees_AutoIncrement(EmployeeName,DOJ,Salary) 
VALUES ('AMAN','2023-1-12',300000)

INSERT INTO Employees_AutoIncrement(EmployeeName,DOJ,Salary) 
VALUES ('Jack','2023-1-12',303000)

SELECT * FROM Employees_AutoIncrement

------------------------------------------------------------------------

CREATE TABLE Employees_AutoIncrement2(
	EmployeeID int Primary key identity(100,1),
--	EmployeeID int Primary key identity(200,5),

	EmployeeName varchar(100),
	DOJ datetime,
	Salary float,
)

INSERT INTO Employees_AutoIncrement2(EmployeeName,DOJ,Salary) 
VALUES ('AMAN','2023-1-12',300000)

INSERT INTO Employees_AutoIncrement2(EmployeeName,DOJ,Salary) 
VALUES ('Jack','2023-1-12',303000)

SELECT * FROM Employees_AutoIncrement2