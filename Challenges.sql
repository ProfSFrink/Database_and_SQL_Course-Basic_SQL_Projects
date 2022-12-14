-- Advanced Software and Web Developer Diploma
-- Course #7 - Database and SQL
-- Challenges

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

-- SQL LIKE CHALLENGE (19/10/22)
--
-- The SELECT LIKE operator is used in a WHERE clause to search for a specified pattern in a columnn. The LIKE clause in the SQL statement below will
-- look for any value in the 'Name' column that begins with the letter 'a' and is at least 2 characters long.

SELECT Name
FROM Sales.Store
WHERE Name LIKE 'a__%'

-- SQL [] WILDCARD CHALLENGE (19/10/22)
--
-- The [] WILDCARD will return any rows that match within the brackets. The below SQL statement will SELECT all rows from the 'City' column where the value starts with either 'a', 'n' ahd 't'
-- and sort the result by 'City'.

SELECT City
FROM Person.Address
WHERE City LIKE '[ant]%' ORDER BY City;

-- SQL BETWEEN CHALLENGE (19/10/22)
--
-- The BETWEEN operator selects values within a given range. The values can be numbers, text, or dates. Below the SQL statement will select all rows from the 'ListPrice' column of the 'Product'
-- table WHERE 'ListPrice' is BETWEEN 10 and 500.

SELECT ListPrice
FROM Production.Product
WHERE ListPrice BETWEEN 10 AND 500
ORDER BY ListPrice