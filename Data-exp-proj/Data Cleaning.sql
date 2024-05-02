--Data Cleaning

--SELECT *
--FROM layoffs


--SELECT * INTO Layoffs_staging --To create a 'dummy' table with original data
--FROM layoffs;

--SELECT *
--FROM Layoffs_staging

--1. Removing Duplicates
--WITH duplicate_cte AS
--(
--SELECT *,
--ROW_NUMBER() OVER 
--(PARTITION BY company,location,
--industry, total_laid_off, percentage_laid_off, [date],stage,
--country, funds_raised_millions
--ORDER BY (SELECT NULL)) AS row_num
--FROM Layoffs_staging
)
--DELETE  ---to remove duplicates 
--FROM duplicate_cte
--WHERE row_num > 1;


--SELECT *  --data validation using 'company'
--FROM Layoffs_staging
--WHERE company = 'Yahoo';

--display of a table to hold the 'clean data' from Layoffs_staging
--CREATE TABLE [dbo].[Layoffs_staging2](
--	[company] [nvarchar](50) NULL,
--	[location] [nvarchar](50) NULL,
--	[industry] [nvarchar](50) NULL,
--	[total_laid_off] [nvarchar](50) NULL,
--	[percentage_laid_off] [nvarchar](50) NULL,
--	[date] [nvarchar](50) NULL,
--	[stage] [nvarchar](50) NULL,
--	[country] [nvarchar](50) NULL,
--	[funds_raised_millions] [nvarchar](50) NULL,
--	[row_num] [nvarchar](50) NULL,
--) ON [PRIMARY]


--display of a table to hold the 'clean data'

--INSERT INTO Layoffs_staging2 
--SELECT *,
--ROW_NUMBER() OVER 
--(PARTITION BY company, location, 
--industry, total_laid_off, percentage_laid_off, [date], stage,
--country, funds_raised_millions
--ORDER BY (SELECT NULL)) AS row_num
--FROM Layoffs_staging

SELECT *
FROM Layoffs_staging2
WHERE row_num > 1;


--Standardising the data

--evaluating Null or blank values 

--removing any unecessary columns 

