-- Advanced Software and Web Developer Diploma
-- Course #7 - Database and SQL
-- Database and SQL Basic Tutorial Video Series

--
-- CHALLENGES (18/10/22)
--

/* Use the 'AdventureWorks' database */
USE AdventureWorks
GO

-- SQL SELECT DISTINCT CHALLENGE (18/10/22)
--
-- The SELECT DISTINCT statement is used to return only (distinct) values. Below we display all the unique cities in the People.Address Table

SELECT DISTINCT City
FROM Person.Address