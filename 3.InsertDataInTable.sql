USE TrainingDB;

CREATE TABLE EMPLOYEES(
	EmployeeId int,
	EmployeeName varchar(100),
	DOJ datetime,
	Salary float
	)

INSERT INTO EMPLOYEES VALUES(1,'RAKESH','2023-01-12',40000);

-- Standard Syntax
-- For Single Insertions
INSERT INTO EMPLOYEES(EmployeeId,EmployeeName,DOJ,Salary) 
VALUES(2,'MAHESH','2024-01-12',60000);

INSERT INTO EMPLOYEES(EmployeeId,EmployeeName,DOJ,Salary) 
VALUES	(3,'RAMESH','2023-10-12',50000);

-- For Multiple Insertions
INSERT INTO EMPLOYEES(EmployeeId,EmployeeName,DOJ,Salary) 
VALUES	(4,'SURESH','2022-10-12',57000),
		(5,'AMAR','2025-10-12',58000),
		(6,'RAM','2024-10-12',56000);

SELECT * FROM EMPLOYEES;