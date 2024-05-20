--Removing any unecessary columns had to use the OR statement to enable data exploration due to the fact that NULL values were being picked out when finding the MAX values
Deleting null values of 2 columns
DELETE 
FROM Layoffs_staging2
WHERE total_laid_off = 'NULL'
OR percentage_laid_off = 'NULL'

--removing row_num column fromm the table
ALTER TABLE layoffs_staging2
DROP COLUMN row_num



