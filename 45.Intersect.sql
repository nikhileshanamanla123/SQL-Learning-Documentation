
SELECT * FROM tblemps
UNION
SELECT * FROM tblEmps2


SELECT * FROM tblemps
INTERSECT
SELECT * FROM tblEmps2

DELETE FROM tblEmps2 WHERE Employeeid=10


SELECT A.* FROM tblEmps A JOIN tblEmps2 B
ON A.EmployeeId=B.EmployeeId AND A.ParentEmployeeId=B.ParentEmployeeId
 