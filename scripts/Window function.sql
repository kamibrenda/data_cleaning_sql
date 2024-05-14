 --window functions

-- --Group by 
-- SELECT gender, AVG(Salary) Avg_Sal
-- FROM dbo.EmployeeDemographics dem
-- JOIN dbo.EmployeeSalary sal
--	ON dem.EmployeeID = sal.EmployeeID
--GROUP BY Gender

--vs 

--window functions 
--with average
 --SELECT gender, AVG(Salary) over()--comparison of average salary of the column due to no specification
 --FROM dbo.EmployeeDemographics dem
 --JOIN dbo.EmployeeSalary sal
	--ON dem.EmployeeID = sal.EmployeeID

 --SELECT dem.FirstName,dem.LastName, AVG(Salary) over(PARTITION BY gender) AS Avg_Sal--calculation based on the unique values in the gender column
 --FROM dbo.EmployeeDemographics dem
 --JOIN dbo.EmployeeSalary sal
	--ON dem.EmployeeID = sal.EmployeeID

--with sum using rolling basis
 SELECT dem.FirstName,dem.LastName, gender,
 SUM(Salary) over(PARTITION BY gender ORDER BY dem.EmployeeID) AS Rolling_Total --demonstrate totals made by individual genders 
 FROM dbo.EmployeeDemographics dem
 JOIN dbo.EmployeeSalary sal
	ON dem.EmployeeID = sal.EmployeeID
