------to show null values
SELECT *
FROM Layoffs_staging2
WHERE total_laid_off = 'NULL'
AND percentage_laid_off = 'NULL'

SELECT *
FROM Layoffs_staging2
WHERE industry IS NULL

SELECT *
FROM Layoffs_staging2
WHERE company like '%Interactive' --Bally's Interactive company remains with NULL as it had only one layoff thus no comparison to fill in

----updating NUll records with the relevant data by joining themselves
SELECT t1.industry, t2.industry
FROM Layoffs_staging2 t1
JOIN Layoffs_staging2 t2
	ON t1.company = t2.company  --Joining the table to its self and conditions have to be the same 
	AND T1.location = T2.location
WHERE (t1.industry IS NULL OR t1.industry = '')
AND t2.industry IS NOT NULL;

----updating the record to DB
UPDATE t1
SET t1.industry = t2.industry
FROM Layoffs_staging2 t1
JOIN Layoffs_staging2 t2 ON t1.company = t2.company
WHERE t1.industry IS NULL
  AND t2.industry IS NOT NULL;

