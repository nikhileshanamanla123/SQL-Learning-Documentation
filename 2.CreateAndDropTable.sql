use TrainingDB;

-- In one table 1024 columns can create in 1 table
CREATE TABLE Employees(EmployeeID int)

DROP TABLE Employees

CREATE TABLE Employees(
	EmployeeID int,
	EmployeeName varchar(100)
);

-- Can written in single or multiple line no matters