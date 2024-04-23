/*SUB-QUERIES*/

SELECT *
FROM EmployeeSalary

--SELECT
SELECT EmployeeID, Salary, (SELECT Avg(Salary) from EmployeeSalary) as AvgSal
FROM EmployeeSalary

--PARTITION BY STATEMENT-----

SELECT EmployeeID, Salary, Avg(Salary) over() as AvgSal
FROM EmployeeSalary


--GROUP BY STATEMENT

SELECT EmployeeID, Salary, Avg(Salary) as AvgSal
FROM EmployeeSalary
group by EmployeeID, Salary
ORDER BY 1,2 


--IN FROM STATEMENT
SELECT a.EmployeeID, AvgSal
FROM (SELECT EmployeeID, Salary, Avg(Salary) over() as AvgSal
	 FROM EmployeeSalary) a

--IN WHERE STATEMENT--only return emp over 30

Select EmployeeID, JobTitle, Salary
FROM EmployeeSalary
WHERE EmployeeID IN (
					   SELECT EmployeeID
						FROM EmployeeDemographics
						where Age > 30 )