CREATE TABLE Vendors(
	VendorID INT PRIMARY KEY,
	VendorName VARCHAR(50),
	Yearly MONEY,
	HalfYearly MONEY,
	Quaterly MONEY,
	Monthly MONEY,
)

INSERT INTO Vendors(VendorID,VendorName,Yearly,HalfYearly,Quaterly,Monthly)
VALUES (1,'xyz company',20000,NULL,NULL,NULL),
		(2,'abc express',NULL,10000,NULL,NULL),
		(3,'door step delivery',NULL,NULL,6000,NULL),
		(4,'tcl telecom',NULL,NULL,NULL,1200)


SELECT * FROM Vendors

SELECT COALESCE(NULL,NULL)
SELECT COALESCE(NULL,100)

SELECT COALESCE(NULL,100,NULL,278,2929)

SELECT ISNULL(NULL,100)
SELECT ISNULL(1,100)

SELECT VendorID,VendorName,
COALESCE(Yearly,HalfYearly*2,Quaterly*4,Monthly*12) Rate
FROM Vendors