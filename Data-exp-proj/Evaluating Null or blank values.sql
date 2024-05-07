--to show null values
SELECT total_laid_off
FROM Layoffs_staging2
--WHERE total_laid_off IS NULL;

SELECT COUNT(*)
FROM Layoffs_staging2
WHERE total_laid_off IS NULL;

SELECT *
FROM Layoffs_staging2
WHERE LTRIM(RTRIM(total_laid_off)) = '';