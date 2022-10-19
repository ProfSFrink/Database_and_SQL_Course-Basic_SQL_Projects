-- Advanced Software and Web Developer Diploma
-- Course #7 - Database and SQL

--
-- TRY / CATCH ASSIGNMENT (18/10/22)

/* Use the 'AdventureWorks' database */
USE AdventureWorks
GO

/* TRY this */
BEGIN TRY
	/* Attempt to divide 1000 by 0 and store the result in variable 'Result' */
	SELECT 1000/0 AS Result;
END TRY /* End TRY */

/* If the above TRY block raises an exception then */
BEGIN CATCH
	SELECT
		ERROR_NUMBER() AS [Error_Code], -- Store the error code in variable 'Error_Code'
		ERROR_PROCEDURE() AS [Invalid_Proc], -- Store the error procedure in variable 'Invalid_Proc'
		ERROR_MESSAGE() AS [Error_Details]; -- -- Store the error message in variable 'Error_Details'
END CATCH