--Removing any unecessary columns
--Deleting null values of 2 columns
DELETE 
FROM Layoffs_staging2
WHERE total_laid_off = 'NULL'
AND percentage_laid_off = 'NULL'

--removing row_num column fromm the table
ALTER TABLE layoffs_staging2
DROP COLUMN row_num