-- Advanced Software and Web Developer Diploma
-- Course #7 - Database and SQL
-- Database and SQL Basic Tutorial Video Series

--
-- STORED PROCEDURE ASSIGNMENT #2 (18/10/22)

/* Use the 'AdventureWorks' database */
USE AdventureWorks
GO

/* Create a stored procedure called 'uspGetAddress2' with one parameter '@City' which is a fixed 30 character length UNICODE string */
CREATE PROCEDURE dbo.uspGetAddress2 @City NVARCHAR(30)
AS
SELECT * FROM Person.Address /* SELECT all rows in the address table */
WHERE City LIKE @City + '%' /* WHERE the 'City' column contains the value of the variable '@City' in addition to any other characters*/
GO
EXEC dbo.uspGetAddress2 @City = 'New' /* We EXECute the stored procedure 'dbo.uspGetAddress2' and pass in the arguments 'New' */