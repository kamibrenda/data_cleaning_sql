/*String Functions: TRIM, LTRIM, Replace*/


CREATE TABLE EmployeeErrors (
EmployeeID Varchar(50),
FirstName Varchar(50),
LastName Varchar(50)
)

INSERT INTO EmployeeErrors Values(
'1001','Jimbo', 'Halbert'), 
('1002', 'Pamela', 'Beasely'),
('1003', 'Toby', 'Flenderson - Fired')

--SELECT *
FROM SQLtut.dbo.EmployeeErrors

---using Trim, LTRIM, RTRIM
SELECT EmployeeID, TRIM(EmployeeID) AS IDTRIM
FROM EmployeeErrors

----LTRIM
SELECT EmployeeID, LTRIM(EmployeeID) AS IDTRIM
FROM EmployeeErrors

----RTRIM
SELECT EmployeeID, RTRIM(EmployeeID) AS IDTRIM
FROM EmployeeErrors


--Using replace
SELECT LastName, REPLACE(LastName, '- Fired', '') AS LastNameFixed
FROM EmployeeErrors

