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

----with sum using rolling basis
-- SELECT dem.FirstName,dem.LastName, gender,salary,
-- SUM(Salary) over(PARTITION BY gender ORDER BY dem.EmployeeID) AS Rolling_Total --demonstrate totals made by individual genders 
-- FROM dbo.EmployeeDemographics dem
-- JOIN dbo.EmployeeSalary sal
--	ON dem.EmployeeID = sal.EmployeeID

--with row number
-- SELECT dem.EmployeeID,dem.FirstName,dem.LastName, gender,salary,
--ROW_NUMBER() OVER(ORDER BY dem.FirstName, dem.LastName, gender, salary) AS RowNumber --comparison with all columns 
-- FROM dbo.EmployeeDemographics dem
-- JOIN dbo.EmployeeSalary sal
--	ON dem.EmployeeID = sal.EmployeeID

--with row number using partition by 
-- SELECT dem.EmployeeID,dem.FirstName,dem.LastName, gender,salary, --numbers assigned uniquely within the partition regardless if duplicate or not
--ROW_NUMBER() OVER(PARTITION BY gender ORDER BY Salary DESC) AS row_num--ranking from highest salary to lowest in gender
-- FROM dbo.EmployeeDemographics dem
-- JOIN dbo.EmployeeSalary sal 
--	ON dem.EmployeeID = sal.EmployeeID

--with rank
-- SELECT dem.EmployeeID,dem.FirstName,dem.LastName, gender,salary,
--ROW_NUMBER() OVER(PARTITION BY gender ORDER BY Salary DESC) AS row_num,
--RANK() OVER(PARTITION BY gender ORDER BY Salary DESC) as Rank_num --if duplicates are noted the numbers are given the same number as they are assigned as per position  
-- FROM dbo.EmployeeDemographics dem --can have 2 number 5s but skips number 6 and goes to 7 if salary is same
-- JOIN dbo.EmployeeSalary sal 
--	ON dem.EmployeeID = sal.EmployeeID

--with dense rank
 SELECT dem.EmployeeID,dem.FirstName,dem.LastName, gender,salary,
ROW_NUMBER() OVER(PARTITION BY gender ORDER BY Salary DESC) AS row_num,
RANK() OVER(PARTITION BY gender ORDER BY Salary DESC) as rank_num, --f duplicates exists the numbers are given the same number as above with row_rank but are assigned numerically not positionally 
DENSE_RANK() OVER(PARTITION BY gender ORDER BY Salary DESC) as dense_rank_num 
 FROM dbo.EmployeeDemographics dem --
 JOIN dbo.EmployeeSalary sal 
	ON dem.EmployeeID = sal.EmployeeID
	