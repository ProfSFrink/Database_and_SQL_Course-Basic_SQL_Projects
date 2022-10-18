-- Advanced Software and Web Developer Diploma
-- Course #7 - Database and SQL
-- Database and SQL Basic Tutorial Video Series

--
-- SCHEMA ASSIGNMENT (18/10/22)

/* Use the 'AdventureWorks' database */
USE AdventureWorks
GO

/* Create a schema called 'ACADEMY_HR' and assign authorization to the database owner. */
CREATE SCHEMA [ACADEMY_HR] AUTHORIZATION [dbo]

/* If a schema called 'ACADEMY_HR' exists drop it from the database */
DROP SCHEMA IF EXISTS [ACADEMY_HR]