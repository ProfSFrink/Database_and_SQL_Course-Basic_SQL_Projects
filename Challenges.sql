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

-- SQL SELECT TOP CHALLENGE (18/10/22)
--
-- The SELECT TOP clause is used to specify the number of records to return. Below we display all the TOP 33 rows from the Person.Person Table

SELECT TOP 33 *
FROM Person.Person

-- SQL MIN / MAX CHALLENGE (18/10/22)
--
-- The MIN() function returns the smallest value of the selected column. Below we SELECT the row with the MINimum value from the 'ListPrice' column 

SELECT MIN(ListPrice) AS 'Smallest Price'
FROM Production.Product

-- The MAX() function returns the largest value of the selected column. Below we SELECT the row with the MAXimum value from the 'ListPrice' column

SELECT MAX(ListPrice) AS 'Largest Price'
FROM Production.Product