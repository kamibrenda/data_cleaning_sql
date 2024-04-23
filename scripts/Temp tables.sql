/*Temp tables*/--stored in the memory and thus can be rerun and get the results
--EXAMPLE 1
CREATE TABLE #temp_employee(
EmployeeID int,
Jobtitle Varchar(100),
Salary int
)

Insert val one by one 
INSERT INTO #temp_employee VALUES(
'1001','IT','45000'
)

insert whole tables into temp tables 
INSERT INTO #temp_employee
SELECT*
FROM SQLtut.dbo.EmployeeSalary

SELECT *
FROM #temp_employee

--helps when used with stored procedures as the temp table exists in mem hence error got if table exists
--EXAMPLE 2
DROP TABLE IF EXISTS #temp_Emp2
CREATE TABLE #temp_Emp2(
Jobtitle Varchar (50),
EmployeesPerJob	int,
AvgAge int,
AvgSalary int
)

INSERT INTO #temp_emp2
SELECT JobTitle ,COUNT(JobTitle),AVG(Age), AVG(Salary)
FROM SQLtut.dbo.EmployeeDemographics de
JOIN SQLtut.dbo.EmployeeSalary sa on de.EmployeeID = sa.EmployeeID
group by JobTitle



SELECT *
FROM #temp_Emp2
--WHERE AvgSalary < '65000'   -conditions



