SELECT DISTINCT DepartmentName FROM DimEmployee
ORDER BY DepartmentName 

SELECT EmployeeKey,FirstName,DepartmentName FROM DimEmployee
ORDER BY DepartmentName DESC

SELECT EmployeeKey,FirstName,DepartmentName,
CASE DepartmentName 
			WHEN 'Sales' THEN 1
			WHEN 'Finance' THEN 2
			WHEN 'Production' THEN 3
			WHEN 'Engineering' THEN 4
			ELSE 5
		 END
FROM DimEmployee

SELECT EmployeeKey,FirstName,DepartmentName FROM DimEmployee
ORDER BY CASE DepartmentName 
			WHEN 'Sales' THEN 1
			WHEN 'Finance' THEN 2
			WHEN 'Production' THEN 3
			WHEN 'Engineering' THEN 4
			ELSE 5
		 END