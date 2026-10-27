CREATE TABLE Employees(
	EmployeeID int Primary key,
	EmployeeName varchar(100),
	DOJ datetime,
	Salary float,
	City varchar(30) default 'London'
)

INSERT INTO employees(EmployeeID,EmployeeName,DOJ,Salary) 
VALUES (1,'AMAN','2023-1-12',300000)

INSERT INTO employees(EmployeeID,EmployeeName,DOJ,Salary,City) 
VALUES (2,'AMAN','2023-1-12',300000,'nyc')

SELECT * FROM Employees