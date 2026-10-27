--INTRODUCATIONS OF CTE
WITH CteSelectSales
AS 
(
	SELECT ProductKey,YEAR(OrderDate) OrderYear,SalesAmount 
	FROM FactInternetSales
)

SELECT ProductKey,OrderYear,SUM(SalesAmount) TotalSales FROM CteSelectSales
GROUP BY ProductKey,OrderYear

---------------------------------------------------------------------------------------------

-- MULTIPART OF CTE
WITH CteSales
AS
(
	SELECT ProductKey,SUM(SalesAmount) TotalSales FROM FactInternetSales
	GROUP BY ProductKey
),
CteProduct
AS
(
	SELECT ProductKey,EnglishProductName FROM DimProduct
)
SELECT P.ProductKey,P.EnglishProductName,S.TotalSales 
FROM CteSales S JOIN CteProduct P
ON S.ProductKey=P.ProductKey

----------------------------------------------------------------------

--  RECURSION OF CTE

WITH CteNumbers(n)
AS
(
	SELECT 1 AS nums
	UNION ALL
	SELECT n+1 FROM CteNumbers
	WHERE n<10
)
SELECT * FROM CteNumbers


WITH CteNumbers(n)
AS
(
	SELECT 1 AS nums
	UNION ALL     -- CAN USE UNION,UNION ALL, EXCEPT,INTERSCEPT
	SELECT n+1 FROM CteNumbers
	--WHERE n<10
)
SELECT * FROM CteNumbers
-- OPTION (MAXRECURSION 32768)

-----------------------------------------------------