CREATE TABLE SalesTran(
	ProductId int,
	InvoiceNum varchar(10),
	Qty int,
	Sales money
)

INSERT INTO SalesTran(ProductId,InvoiceNum,Qty,Sales)
VALUES	(1,'SOB982',10,3000),
		(2,'SOB983',5,2500),
		(3,'SOB984',5,376),
		(1,'SOB985',7,2100),
		(2,'SOB986',8,4000),
		(4,'SOB987',10,838)

CREATE TABLE Products(
	ProductId int,
	ProductName varchar(50),
	UnitPrice money
)

INSERT INTO Products(ProductId,ProductName,UnitPrice)
VALUES  (1,'ABC Logo Cap',300),
		(2,'Ball Bearing',500),
		(3,'Bell',75.2),
		(4,'Trousers',83.8),
		(5,'Shirt',200)

SELECT * FROM SalesTran
SELECT * FROM Products

-- CROSS JOIN
SELECT * FROM SalesTran,Products

-- INNER JOIN (ONLY MATCHING ROWS)
SELECT * FROM SalesTran JOIN Products
ON SalesTran.ProductId=Products.ProductId

SELECT * FROM SalesTran AS S INNER JOIN Products AS P
ON S.ProductId=P.ProductId

SELECT S.* FROM SalesTran AS S INNER JOIN Products AS P
ON S.ProductId=P.ProductId

SELECT P.* FROM SalesTran AS S INNER JOIN Products AS P
ON S.ProductId=P.ProductId

SELECT P.ProductId,P.ProductName,S.InvoiceNum,S.Qty,S.Sales
FROM SalesTran AS S INNER JOIN Products AS P
ON S.ProductId=P.ProductId

-- LEFT JOIN(ONLY LEFT RECORD MATCH)
SELECT * FROM SalesTran AS S LEFT JOIN Products AS P
ON S.ProductId=P.ProductId

SELECT * FROM Products AS S LEFT JOIN SalesTran AS P
ON S.ProductId=P.ProductId

SELECT * FROM Products AS S RIGHT JOIN SalesTran AS P
ON S.ProductId=P.ProductId

SELECT * FROM SalesTran AS S RIGHT JOIN Products AS P
ON S.ProductId=P.ProductId

