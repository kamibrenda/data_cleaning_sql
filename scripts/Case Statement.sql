/*Case Statements*/

SELECT FirstName, LastName, Age,
CASE 
	WHEN Age > 30 THEN 'Old'
	WHEN Age BETWEEN 27 AND 30 THEN 'Young' 
	ELSE 'Baby'
END AS Age_Category
FROM SQLtut.dbo.EmployeeDemographics
WHERE Age IS NOT NULL
ORDER BY Age

SELECT FirstName, LastName, JobTitle, Salary,
CASE 
	WHEN JobTitle = 'Salary' THEN Salary + (Salary * .10)
	WHEN Jobtitle = 'Accountant' THEN  Salary + (Salary * .05)
	WHEN Jobtitle = 'HR' THEN Salary + (Salary * .000001)
	ELSE Salary + (Salary * .03)
END AS Salary_Raise
FROM SQLtut.dbo.EmployeeDemographics
JOIN SQLtut.dbo.EmployeeSalary ON EmployeeDemographics.EmployeeID =
	EmployeeSalary.EmployeeID


