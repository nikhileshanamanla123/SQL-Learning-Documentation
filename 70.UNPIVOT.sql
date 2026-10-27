SELECT * FROM EMPLOYEES

SELECT * INTO PivotData FROM(
SELECT City,Department,Salary FROM EMPLOYEES)T
PIVOT(SUM(Salary) FOR Department IN(IT,Sales))P

SELECT * FROM PivotData

SELECT City,Department,Salary FROM(
SELECT City,IT,Sales FROM PivotData)T
UNPIVOT(Salary FOR Department IN(IT,Sales))U
