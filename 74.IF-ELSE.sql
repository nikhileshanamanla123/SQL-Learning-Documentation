
DECLARE @x INT 

SET @x =100

-- SELECT IIF(@x=10,1,0)

--IF @x=100
--	SELECT 1
--ELSE 
--	SELECT 0


IF @x=10000
	BEGIN
		PRINT(1)
		PRINT(2)
	END
ELSE 
	IF @x =100
	BEGIN
		PRINT(100)
		PRINT(300)
	END
	ELSE
		PRINT(200)