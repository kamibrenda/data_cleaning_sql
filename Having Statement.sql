/*Having*/

SELECT JobTitle, Count(JobTitle)
FROM SQLtut.dbo.EmployeeDemographics
JOIN SQLtut.dbo.EmployeeSalary ON EmployeeDemographics.EmployeeID =
	EmployeeSalary.EmployeeID
GROUP BY JobTitle
HAVING Count(JobTitle) > 1

SELECT JobTitle, AVG(Salary) as Sal_Avg
FROM SQLtut.dbo.EmployeeDemographics
JOIN SQLtut.dbo.EmployeeSalary ON EmployeeDemographics.EmployeeID =
	EmployeeSalary.EmployeeID
GROUP BY JobTitle
HAVING AVG(Salary) > 45000
ORDER BY AVG(Salary)

