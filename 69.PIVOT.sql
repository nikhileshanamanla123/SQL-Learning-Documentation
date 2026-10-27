
SELECT City,Department,Salary FROM EMPLOYEES


SELECT * FROM(
SELECT City,Department,Salary FROM EMPLOYEES)T
PIVOT(SUM(Salary) FOR Department IN(IT,Sales))P

