-- Advanced Software and Web Developer Diploma
-- Course #7 - Database and SQL
-- Database and SQL Basic Tutorial Video Series

--
-- DATABASE AND SQL BASIC TUTORIAL - PART 7 CONTINUED (10/10/2022)
--

-- Print the string 'Hello World' to the console
PRINT 'Hello World'

DECLARE @myVariable INT; -- Create a variable called 'myVariable' and set it's data type to integer
SET @myVariable = 6 -- Set the value of 'myVariable' to 6
PRINT @myVariable -- Print 'myVariable' to the console

DECLARE @var1 INT, @var2 INT -- Declare two variables 'var1' and 'var2' and make them both integers
SET @var1 = 3 -- Set 'var1' to the value 3
SET @var2 = 5 -- Set 'var2' to the value 5

PRINT 'Having fun with' + ' TSQL and MS SQL SERVER!' -- Concatenate the two strings together and output the result to the console

PRINT 'I have ' + CONVERT(VARCHAR(50), @var1) + ' dollars...' -- Concatenate the string with variable 'var1' we make use of the built-in function
															  -- CONVERT to convert 'var1' to a string so we can use it in concatentation.