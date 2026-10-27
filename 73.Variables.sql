
DECLARE @x INT -- DECLARING A VARIABLE

SET @x=100 -- SET THE VALUE IN VARIABLE

SELECT @x -- FETCH VALUE FROM VARIABLE

----------------------------------------------------

DECLARE @x INT
DECLARE @y VARCHAR(10)

SET @x =100
SET @y='HELLO'

SELECT @x 
SELECT @y

------------------------------------------------------------

DECLARE @x INT, @y VARCHAR(10)

SELECT @x = 100,@y='HELLO'
SELECT @x,@y

------------------------------------------------------------

DECLARE @x INT
SET @x = 100
SET @x = 200

SELECT @x

--------------------------------------------------------------------

DECLARE @x INT = 100
SELECT @x

----------------------------------------------------------------------

DECLARE @x INT = 100
SET @x=200
SELECT @x