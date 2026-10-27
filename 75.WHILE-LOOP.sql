DECLARE @x INT =0

WHILE @x < 10 -- RUN THE LOOP UNTIL CONDITION IS TRUE
	BEGIN
		SET @x = @x + 1
		PRINT(@x)
	END

----------------------------------------------------------

DECLARE @x INT =0

WHILE @x < 10 -- RUN THE LOOP UNTIL CONDITION IS TRUE
	BEGIN
		SET @x = @x + 1
		IF @X < 6
			PRINT(@x)
		ELSE
			PRINT('LOOP IS RUNNING')
	END

----------------------------------------------------------

DECLARE @x INT =0

WHILE @x < 10 -- RUN THE LOOP UNTIL CONDITION IS TRUE
	BEGIN
		SET @x = @x + 1
		IF @X < 6
			PRINT(@x)
		ELSE
			BREAK
	END



