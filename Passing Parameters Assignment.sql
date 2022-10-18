-- Advanced Software and Web Developer Diploma
-- Course #7 - Database and SQL
-- Database and SQL Basic Tutorial Video Series

--
-- PASSING PARAMETERS ASSIGNMENT (18/10/22)

/* Use the 'AdventureWorks' database */
USE AdventureWorks
GO

/* Create a stored procedure called 'uspGetAddress3' with two parameters '@City' which is a fixed 30 character length UNICODE string 
and '@PostalCode' which is a fixed 10 character length UNICODE string */
CREATE PROC dbo.GetAddress3 @City NVARCHAR(30), @PostalCode NVARCHAR(10)
AS
SELECT * FROM Person.Address /* SELECT all rows in the address table */
WHERE City Like @City + '%' AND PostalCode LIKE @PostalCode /* WHERE the 'City' column contains the value of the variable '@City' in addition to any other characters */
															/* and where the 'PostalCode' column equals '@PostalCode' */
GO

/* EXECute the store procedure 'dbo.GetAddress3' and pass in the arguments 'New' and '[98]%' */
EXEC dbo.GetAddress3 @City = 'New', @PostalCode = '[98]%'

/* Create a stored procedure called 'uspGetAddress4' with one parameter '@CityName' which is a fixed 30 character length UNICODE string which is an OUTPUT variable */
CREATE PROCEDURE dbo.uspGetAddress4 @CityName NVARCHAR(30) OUTPUT
AS
SELECT City FROM Person.Address /* SELECT all rows from the City column in the address table */
WHERE AddressID = 38 AND PostalCode = 48226 /* WHERE the 'AddressID' column equals '38' AND the the 'PostalCode' column equals '48226' */
GO

DECLARE @CityName NVARCHAR(30) /* Declare a variable called '@CityName' which is a fixed 30 character UNICODE string */

/* EXECute the store procedure 'dbo.GetAddress4' and return the value '@CityName' */
EXEC dbo.uspGetAddress4 @CityName = @CityName OUTPUT
PRINT @CityName -- Output the value of '@CityName' to the console