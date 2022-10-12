-- Advanced Software and Web Developer Diploma
-- Course #7 - Database and SQL
-- Database and SQL Basic Tutorial Video Series

--
-- DATABASE AND SQL BASIC TUTORIAL - PART 10 (12/10/2022)
--
 
USE [db_zooTest2]
GO

-- CONVERT(VARCHAR(50), @totalHab) - This is converting the data type from MONEY to VARCHAR
-- CHAR(13) = Line Break
-- CHAR(9) = Tab Key

DECLARE @totalHab MONEY; -- Declare variable '@totalHab' as MONEY data type
DECLARE @totalNut MONEY; -- Declare variable '@totalNut' as MONEY data type
DECLARE @results MONEY; -- Declare variable '@results' as MONEY data type

SET @totalHab = (SELECT SUM(habitat_cost) FROM tbl_habitat); -- Set variable '@totalHab' to the total SUM of '@habitat_cost' column from 'tbl_habiat'
SET @totalNut = (SELECT SUM(nutrition_cost) FROM tbl_nutrition); -- Set variable '@totalNut' to the total SUM of '@nutrition_cost' column from 'tbl_nutrition'
SET @results = (@totalHab + @totalNut) -- Set variable '@results' to the sum of '@totalHab' and '@totalNut

PRINT ( -- Print the total values, converting them from MONEY data types back to VARCHAR data type
	CONVERT(VARCHAR(50), @totalHab) + CHAR(9) + ' - The Total Habitat Cost' + CHAR(13) +
	CONVERT(VARCHAR(50), @totalNut) + CHAR(9) + CHAR(9) + ' - The Total Nutrition Cost ' + CHAR(13) + '---------' + CHAR(13) +
	CONVERT(VARCHAR(50), @results)
);