--Data Cleaning

--SELECT *
--FROM layoffs


--SELECT * INTO Layoffs_staging --To create a 'dummy' table with original data
--FROM layoffs;

--SELECT *
--FROM Layoffs_staging

--1. Removing Duplicates
WITH duplicate_cte AS
(
SELECT *,
ROW_NUMBER() OVER 
(PARTITION BY company,location,
industry, total_laid_off, percentage_laid_off, [date],stage,
country, funds_raised_millions
ORDER BY (SELECT NULL)) AS row_num
FROM Layoffs_staging
)
--DELETE
--FROM duplicate_cte
--WHERE row_num > 1;


--SELECT *
--FROM Layoffs_staging
--WHERE company = 'Yahoo';

--Standardising the data

--evaluating Null or blank values 

--removing any unecessary columns 

