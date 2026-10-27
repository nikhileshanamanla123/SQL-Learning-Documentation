CREATE SCHEMA SALES

CREATE TABLE SALES.SalesTran(
	Orderid int,
	Orderdata datetime,
	qty int
 )

SELECT * FROM SALES.SalesTran

-- FOE DELETING SCHEMA
DROP TABLE SALES.SalesTran
DROP SCHEMA SALES