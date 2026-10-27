-- To find char in column 

/* Invaild syntax
SELECT * FROM DimProduct
Where EnglishProductName ='Bearing Ball'
*/

/* Like Operator
% - Any number of unknown chars
_ - One Unknown chars
*/


-- Begin with that char
SELECT * FROM DimProduct
Where EnglishProductName LIKE 'A%'

SELECT * FROM DimProduct
Where EnglishProductName LIKE 'Aw%'

-- End with char
SELECT * FROM DimProduct
Where EnglishProductName LIKE '%e'

SELECT * FROM DimProduct
Where EnglishProductName LIKE '%ce'

-- Char is middle of word
SELECT * FROM DimProduct
Where EnglishProductName LIKE '%a%'

-- Can many char can be in word
SELECT * FROM DimProduct
Where EnglishProductName LIKE 'A%C%'

-- Skip one char in between
SELECT * FROM DimProduct
Where EnglishProductName LIKE 'A_C%'

-- Start with A and end with C only
SELECT * FROM DimProduct
Where EnglishProductName LIKE 'A_C'
