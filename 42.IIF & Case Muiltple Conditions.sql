SELECT ProductKey,EnglishProductName,Color,ListPrice,
IIF(Color='Red' and ListPrice>=3000,'Rd-3K',
IIF(Color='Red' and ListPrice>=2000,'Rd-2K',
IIF(Color='Red' ,'Rd<2K',
IIF(Color='Sliver' and ListPrice>=3000,'Sl-3K',
IIF(Color='Sliver' and ListPrice>=2000,'Sl-2K',
IIF(Color='Sliver' ,'Sl<2k',
'na')))))) Code
FROM DimProduct

SELECT ProductKey,EnglishProductName,Color,ListPrice,
CASE
	WHEN Color='Red' and ListPrice>=3000 THEN 'Rd-3k'
	WHEN Color='Red' and ListPrice>=2000 THEN 'Rd-2k'
	WHEN Color='Red' THEN 'Rd<2k'
	WHEN Color='Sliver' and ListPrice>=3000 THEN 'Sl-3k'
	WHEN Color='Sliver' and ListPrice>=2000 THEN 'Sl-2k'
	WHEN Color='Sliver' THEN 'Sl<2k'
	ELSE 'NA'
END Code
FROM DimProduct

