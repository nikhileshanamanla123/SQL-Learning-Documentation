/*
CLUSTERED INDEXES

only one can built
*/


--DROP TABLE EMPLOYEES
CREATE TABLE EMPLOYEES (
	EmployeeId int,
	EmpName varchar(100),
	City varchar(30),
	Department varchar(50),
	Salary money
)

INSERT INTO EMPLOYEES (EmployeeId, EmpName, City, Department, Salary) VALUES
(1, 'John', 'NYC', 'IT', 40000),
(2, 'Amanda', 'London', 'Sales', 40000),
(3, 'Aman', 'Pune', 'IT', 30000),
(4, 'Rahul', 'Pune', 'IT', 26000),
(5, 'Sam', 'London', 'Sales', 30000)

SELECT * FROM EMPLOYEES

SELECT * FROM EMPLOYEES
WHERE Department='IT'


-- AFTER BELOW QUERY CHECK THE TABLE 
INSERT INTO EMPLOYEES (EmployeeId, EmpName, City, Department, Salary) VALUES 
(6, 'Rakesh', 'Delhi', 'IT', 20000)


-- FIRST RUN THIS QUERY
INSERT INTO EMPLOYEES (EmployeeId, EmpName, City, Department, Salary) VALUES
(7, 'Suraj', 'Pune', 'Sales', 12000), 
(8, 'Ajay', 'Delhi', 'Sales', 10000), 
(9, 'Ankita', 'Delhi', 'Sales', 10000), 
(10, 'Sudeep', 'Delhi', 'IT', 36000), 
(11, 'Sanket', 'Pune', 'IT', 40000)

------------------------------------------------------------------------------------------
CREATE TABLE EMPLOYEES2 (
	EmployeeId int PRIMARY KEY,
	EmpName varchar(100),
	City varchar(30),
	Department varchar(50),
	Salary money
)


INSERT INTO EMPLOYEES2(EmployeeId, EmpName, City, Department, Salary) VALUES
(1, 'John', 'NYC', 'IT', 40000),
(2, 'Amanda', 'London', 'Sales', 40000),
(3, 'Aman', 'Pune', 'IT', 30000),
(4, 'Rahul', 'Pune', 'IT', 26000),
(5, 'Sam', 'London', 'Sales', 30000)

SELECT * FROM EMPLOYEES2

SELECT * FROM EMPLOYEES2
WHERE Department='IT'

-- AFTER BELOW QUERY CHECK THE TABLE 
INSERT INTO EMPLOYEES2 (EmployeeId, EmpName, City, Department, Salary) VALUES 
(6, 'Rakesh', 'Delhi', 'IT', 20000)

-- FIRST RUN THIS QUERY
INSERT INTO EMPLOYEES2(EmployeeId, EmpName, City, Department, Salary) VALUES
(7, 'Suraj', 'Pune', 'Sales', 12000), 
(8, 'Ajay', 'Delhi', 'Sales', 10000), 
(9, 'Ankita', 'Delhi', 'Sales', 10000), 
(10, 'Sudeep', 'Delhi', 'IT', 36000), 
(11, 'Sanket', 'Pune', 'IT', 40000)

-----------------------------------------------------------------------------------

CREATE TABLE EMPLOYEES3(
	EmployeeId int,
	EmpName varchar(100),
	City varchar(30),
	Department varchar(50),
	Salary money
)

INSERT INTO EMPLOYEES3 (EmployeeId, EmpName, City, Department, Salary) VALUES
(1, 'John', 'NYC', 'IT', 40000),
(2, 'Amanda', 'London', 'Sales', 40000),
(3, 'Aman', 'Pune', 'IT', 30000),
(4, 'Rahul', 'Pune', 'IT', 26000),
(5, 'Sam', 'London', 'Sales', 30000)

SELECT * FROM EMPLOYEES3

-- DEFEAULT NON-CLUSTER
CREATE CLUSTERED INDEX In_Empid ON EMPLOYEES3(EmployeeId)

-- AFTER BELOW QUERY CHECK THE TABLE 
INSERT INTO EMPLOYEES3 (EmployeeId, EmpName, City, Department, Salary) VALUES 
(6, 'Rakesh', 'Delhi', 'IT', 20000)

-- FIRST RUN THIS QUERY
INSERT INTO EMPLOYEES3(EmployeeId, EmpName, City, Department, Salary) VALUES
(7, 'Suraj', 'Pune', 'Sales', 12000), 
(8, 'Ajay', 'Delhi', 'Sales', 10000), 
(9, 'Ankita', 'Delhi', 'Sales', 10000), 
(10, 'Sudeep', 'Delhi', 'IT', 36000), 
(11, 'Sanket', 'Pune', 'IT', 40000)

-- DROP INDEX In_Empid ON EMPLOYEES3

-- SELECT THE QUREY AND EXCUTE CHECK THE EXCUTION PLAN
ALTER INDEX In_Empid ON EMPLOYEES3 DISABLE

ALTER INDEX In_Empid ON EMPLOYEES3 REBUILD