SELECT EmployeeId,EmpName,Department,Salary,
LAG(Salary,1) OVER(ORDER BY Department)
FROM EMPLOYEES

SELECT EmployeeId,EmpName,Department,Salary,
LAG(Salary,2) OVER(ORDER BY Department)
FROM EMPLOYEES

SELECT EmployeeId,EmpName,CITY,Department,Salary,
LAG(Salary,1) OVER(PARTITION BY City ORDER BY Department)
FROM EMPLOYEES

-----------------------------------------------------------
SELECT EmployeeId,EmpName,Department,Salary,
LEAD(Salary,1) OVER(ORDER BY Department)
FROM EMPLOYEES

SELECT EmployeeId,EmpName,City,Department,Salary,
LEAD(Salary,1) OVER(PARTITION BY CITY ORDER BY Department)
FROM EMPLOYEES