/*PARTITION BY*/
SELECT De.FirstName, De.LastName,DE.Gender, Sal.Salary,
COUNT(Gender) OVER (PARTITION BY Gender) AS TotalGender 
FROM  
SQLtut.dbo.EmployeeDemographics De
JOIN SQLtut.dbo.EmployeeSalary Sal ON De.EmployeeID = Sal.EmployeeID

/*Group By vs Partition By*/
SELECT DE.Gender, COUNT(Gender) AS Total_Gender
FROM  
SQLtut.dbo.EmployeeDemographics De
JOIN SQLtut.dbo.EmployeeSalary Sal ON De.EmployeeID = Sal.EmployeeID
GROUP BY  DE.Gender

--SELECT *
--FROM SQLtut.dbo.EmployeeDemographics

--SELECT *
--FROM SQLtut.dbo.EmployeeSalary
