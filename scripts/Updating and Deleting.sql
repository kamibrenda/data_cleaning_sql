/*Updating and Deleting data*/
Aliasing col names
SELECT FirstName Fname
FROM SQLtut.dbo.EmployeeDemographics

SELECT FirstName + ' ' + LastName AS FullName
FROM SQLtut.dbo.EmployeeDemographics

SELECT AVG(Age) AS AvgAge
FROM SQLtut.dbo.EmployeeDemographics

Aliasing table names
SELECT Demo.EmployeeID , Sal.Salary
FROM SQLtut.dbo.EmployeeDemographics AS Demo
JOIN SQLtut.dbo.EmployeeSalary AS Sal
	ON Demo.EmployeeID = Sal.EmployeeID

SELECT *
FROM SQLtut.dbo.EmployeeDemographics Demo
LEFT JOIN SQLtut.dbo.EmployeeSalary Sal
	ON Demo.EmployeeID = Sal.EmployeeID
LEFT JOIN SQLtut.dbo.WareHouseEmployeeDemographics Ware
	ON demo.EmployeeID = Ware.EmployeeID
