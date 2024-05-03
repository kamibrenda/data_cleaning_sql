--Layoffs_staging2 table 

--DELETE --To remove the duplicates
--FROM Layoffs_staging2
--WHERE row_num > 1


--SELECT * --To remove the duplicates
--FROM Layoffs_staging2

--remove white spaces from company column
--Standardising the data  -finding issues in the data and fixing it 
--SELECT company, TRIM(company) AS N_company
--FROM Layoffs_staging2

--UPDATE Layoffs_staging2   --to change the columns with updated information
--SET company = TRIM(company)

--standardise the industry column specifically with 'Crpto' as an industry
--SELECT DISTINCT industry
--FROM Layoffs_staging2
----GROUP BY industry
--WHERE industry LIKE 'Crypto%'


--UPDATE Layoffs_staging2   --to change the columns with updated information
--SET industry = 'Crypto'
--WHERE industry LIKE 'Crypto%'


--standardising the country column 
--SELECT DISTINCT country
--FROM Layoffs_staging2
--ORDER BY 1


SELECT DISTINCT country, TRIM(TRAILING '.'FROM country) AS Fixed_Country
FROM Layoffs_staging2
--GROUP BY industry
WHERE country LIKE 'United States%'
ORDER BY 1