/*inner join*/
SELECT *
FROM SQLtut.dbo.EmployeeDemographics
INNER JOIN SQLtut.dbo.EmployeeSalary 
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID


/*FULL OUTER JOIN*/
SELECT *
FROM SQLtut.dbo.EmployeeDemographics
FULL OUTER JOIN SQLtut.dbo.EmployeeSalary 
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID


/*LEFT OUTER JOIN*/
SELECT *
FROM SQLtut.dbo.EmployeeDemographics
LEFT OUTER JOIN SQLtut.dbo.EmployeeSalary 
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

/*RIGHT OUTER JOIN*/
SELECT *
FROM SQLtut.dbo.EmployeeDemographics
RIGHT OUTER JOIN SQLtut.dbo.EmployeeSalary 
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
