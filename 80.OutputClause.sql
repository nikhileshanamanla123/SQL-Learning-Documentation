-- DROP TABLE IF EXISTS Products1


CREATE TABLE Products1(
	ProductKey int primary key,
	ProductName varchar(100),
	StockLevel int,
	Price money
)

SELECT * FROM Products1
-- TRUNCATE TABLE Products1

INSERT INTO Products1(ProductKey,ProductName,StockLevel,Price)
OUTPUT INSERTED.*
VALUES
(1,'Adjustable Race',1000,100.50),
(2,'Bearing Ball',800,90.85),
(3,'BB Ball Bearing',1250,120.45),
(4,'Headset Ball Bearings',500,75.10)

DELETE FROM Products1
OUTPUT deleted.*
WHERE ProductKey >= 3

DECLARE @tblproducts1 TABLE(
	ProductKey int NOT Null,
	ProductName Varchar(100),
	StockLevel int,
	Price money
)
DELETE FROM Products1
OUTPUT deleted.* INTO @tblproducts1
WHERE ProductKey >= 3

SELECT * FROM @tblproducts1


UPDATE Products1
SET Price=90
OUTPUT inserted.ProductKey,deleted.Price,inserted.Price
WHERE ProductKey = 1

-- MERGE

-- DROP TABLE IF EXISTS Products1
CREATE TABLE Products1(
	ProductKey int primary key,
	ProductName varchar(100),
	StockLevel int,
	Price money
)

INSERT INTO Products1 (ProductKey, ProductName, StockLevel, Price) VALUES
(1, 'Adjustable Race', 1000,100.50),
(2, 'Bearing Ball', 800,90.85),
(3, 'BB Ball Bearing', 1250,120.45)


--DROP TABLE IF EXISTS Products_Stage
CREATE TABLE Products_Stage(
	ProductKey int primary key,
	ProductName varchar(100),
	StockLevel int,
	Price money
)

INSERT INTO Products_Stage (ProductKey, ProductName, StockLevel, Price) VALUES
(1, 'Adjustable Race', 1200, 100.50),
(2, 'Bearing Ball', 1200,95.85),
(11, 'Crown Race', 400, 100.25),
(12, 'Chain Stays', 600, 30.45)

SELECT * FROM Products1
SELECT * FROM Products_Stage

MERGE INTO Products1 T
	USING Products_Stage S
	ON T.ProductKey=S.ProductKey

WHEN NOT MATCHED THEN
	INSERT (ProductKey, ProductName, StockLevel, Price)
	VALUES (S.ProductKey, S.ProductName, S. StockLevel, S.Price)

WHEN MATCHED THEN
	UPDATE SET T. StockLevel = S. StockLevel,
				T.Price = S.Price

WHEN NOT MATCHED BY SOURCE THEN 
	DELETE

	OUTPUT S.ProductKey,S.ProductName,S.StockLevel,S.Price,$Action as operation;
