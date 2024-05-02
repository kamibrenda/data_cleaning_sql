--Layoffs_staging2 table 

--DELETE --To remove the duplicates
--FROM Layoffs_staging2
--WHERE row_num > 1


--SELECT * --To remove the duplicates
--FROM Layoffs_staging2

--Standardising the data  -finding issues in the data and fixing it 
--SELECT company, TRIM(company) AS N_company
--FROM Layoffs_staging2

--UPDATE Layoffs_staging2   --to change the columns with updated information
--SET company = TRIM(company)

SELECT  *
FROM Layoffs_staging2
WHERE industry LIKE '%cry%'

--UPDATE Layoffs_staging2   --to change the columns with updated information
--SET company = TRIM(company)