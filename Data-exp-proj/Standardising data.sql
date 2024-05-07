--Layoffs_staging2 table 

DELETE --To remove the duplicates
FROM Layoffs_staging2
WHERE row_num > 1


SELECT * --To remove the duplicates
FROM Layoffs_staging2

--remove white spaces from company column
--Standardising the data  -finding issues in the data and fixing it 
SELECT company, TRIM(company) AS N_company
FROM Layoffs_staging2

UPDATE Layoffs_staging2   --to change the columns with updated information
SET company = TRIM(company)

--standardise the industry column specifically with 'Crpto' as an industry
SELECT DISTINCT industry
FROM Layoffs_staging2
--GROUP BY industry
WHERE industry LIKE 'Crypto%'


UPDATE Layoffs_staging2   --to change the columns with updated information
SET industry = 'Crypto'
WHERE industry LIKE 'Crypto%'


--standardising the country column 
SELECT *
FROM Layoffs_staging2
WHERE company LIKE 'United States%'
ORDER BY 1

SELECT DISTINCT country, TRIM(TRAILING '.' FROM country)  --TO REMOVE WHITESPACE AND PERIOD
FROM Layoffs_staging2
ORDER BY 1

UPDATE Layoffs_staging2  --To save the country column without period and white space
SET country = TRIM(TRAILING '.' FROM country)
WHERE country LIKE 'United States%'


--to change the date column type from nvarchar to date
SELECT date
FROM Layoffs_staging2


SELECT [date] AS 'OriginalString',
       CONVERT(DATE, [date], 101) AS 'ConvertedDate'
FROM Layoffs_staging2;

UPDATE Layoffs_staging2   --to change the columns with updated information
SET date = CONVERT(DATE, [date], 101)


ALTER TABLE layoffs_staging2
ALTER COLUMN [date] DATE;

SELECT *
FROM layoffs_staging2
WHERE ISDATE([date]) = 0;

UPDATE layoffs_staging2
SET [date] = GETDATE()  -- Replace NULL with current date
WHERE [date] IS NULL;

