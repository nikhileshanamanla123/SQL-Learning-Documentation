--TEMP TABLE - TYPE-1 - LOCAL TEMP TABLE

CREATE TABLE #EMPLOYEES(
	EMPID INT,
	EMPNAME VARCHAR(20)
)

SELECT * FROM #EMPLOYEES

-------------------------------------------------------------------

--TEMP TABLE - TYPE-2 - GOBAL TEMP TABLE

CREATE TABLE ##EMPLOYEES(
	EMPID INT,
	EMPNAME VARCHAR(20)
)

SELECT * FROM ##EMPLOYEES

---------------------------------------------------------

SELECT * INTO #DimProduct FROM DimProduct

SELECT * FROM #DimProduct

