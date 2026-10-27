SELECT * FROM EMPLOYEES

----------------------------------------------------

ALTER TABLE EMPLOYEES
ADD Email VARCHAR(100)

ALTER TABLE EMPLOYEES
ADD PHONE VARCHAR(100),DEPT VARCHAR(30)

---------------------------------------------------

ALTER TABLE EMPLOYEES
DROP COLUMN Email

ALTER TABLE EMPLOYEES
DROP COLUMN Phone,DEPT

----------------------------------------------------

ALTER TABLE EMPLOYEES
ALTER COLUMN EmpName VARCHAR(200)