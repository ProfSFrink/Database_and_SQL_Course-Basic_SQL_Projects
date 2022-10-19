-- Advanced Software and Web Developer Diploma
-- Course #7 - Database and SQL

--
-- STORED PROCEDURE ASSIGNMENT (17/10/22)

/* Use the database 'AdventureWorks' */
USE AdventureWorks
GO

/* Create a new stored procedure 'dbo.uspGetAddress' */
CREATE PROCEDURE dbo.uspGetAddress
AS
SELECT * FROM Person.Address -- SELECT all rows from the 'Person.Address' column
GO

EXEC dbo.uspGetAddress -- EXECUTE the store procedure 'dbo.uspGetAddress'

DROP PROCEDURE IF EXISTS dbo.uspGetAddress -- DROP the stored procedure 'dbo.uspGetAddress' IF it exists in the database