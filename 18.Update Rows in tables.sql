SELECT * INTO DimProduct_BKUP FROM DimProduct

-- DROP TABLE DimProduct_BKUP
SELECT * FROM DimProduct_BKUP

UPDATE DimProduct_BKUP SET Color='No Color'
WHERE Color ='NA'

UPDATE DimProduct_BKUP SET Color='Red-High'
WHERE Color ='RED' AND ListPrice>3000

UPDATE DimProduct_BKUP SET Color='Red-Low',StandardCost=1000
WHERE Color ='RED' AND ListPrice<1500

