/* Rules
1. same number of columns in both table
2. data types should match
3. union also sort the data
*/
SELECT * FROM tblemps

SELECT * INTO tblEmps2 FROM tblemps

-- add only distinct records
SELECT * FROM tblemps
UNION
SELECT * FROM tblEmps2

-- Add all recordes
SELECT * FROM tblemps
UNION ALL
SELECT * FROM tblEmps2

SELECT EmployeeId,EmployeeName,Title,Salary FROM tblemps
UNION
SELECT EmployeeId,EmployeeName,Title,Salary FROM tblEmps2


SELECT EmployeeId,EmployeeName,NUll Title,Salary FROM tblemps
UNION
SELECT EmployeeId,EmployeeName,Title,Salary FROM tblEmps2