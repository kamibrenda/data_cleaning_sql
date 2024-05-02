SELECT *,
ROW_NUMBER() OVER (PARTITION BY company, industry, total_laid_off, percentage_laid_off, date ORDER BY (SELECT NULL)) AS row_num
FROM Layoffs_staging
--WHERE row_num = 1;