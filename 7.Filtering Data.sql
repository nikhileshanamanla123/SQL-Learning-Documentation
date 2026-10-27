SELECT * FROM DimProduct
WHERE ListPrice = 63.50

SELECT * FROM DimProduct
WHERE ListPrice >= 1000

SELECT * FROM DimProduct
WHERE ListPrice <> 63.50

SELECT * FROM DimProduct
WHERE Color = 'Red'

/* invalid syntax
SELECT * FROM DimProduct
WHERE Color = 'Red','Silver
*/

-- aleast one conditions should be true
SELECT * FROM DimProduct
WHERE Color = 'Red' or Color ='Silver'

-- Both conditions should be true
SELECT * FROM DimProduct
WHERE Color = 'Red' AND Color ='Silver'

-- from multiple conditions
SELECT * FROM DimProduct
WHERE Color = 'Red' or Color ='Silver'or Color ='white'
order by Color

-- overcome above problem
SELECT * FROM DimProduct
WHERE Color in ('Red' ,'Silver','white')

-- condition on different column 
SELECT * FROM DimProduct
WHERE Color = 'Red' or ListPrice >= 1000

-- condition on different column 
SELECT * FROM DimProduct
WHERE Color = 'Red' AND ListPrice >= 1000

-- same but different logic 
SELECT * FROM DimProduct
WHERE Color in ('Red' ,'Silver','white')AND ListPrice >= 1000