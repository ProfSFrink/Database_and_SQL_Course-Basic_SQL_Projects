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

PRINT 'Having fun with' + ' TSQL and MS SQL SERVER!' -- Concatenate the two strings together and output the result to the console

PRINT 'I have ' + CONVERT(VARCHAR(50), @var1) + ' dollars...' -- Concatenate the string with variable 'var1' we make use of the built-in function
															  -- CONVERT to convert 'var1' to a string so we can use it in concatentation.

PRINT CHAR(9) + 'I have ' + CONVERT(VARCHAR(50), @var1) + CHAR(13) + ' dollars...' -- The CHAR(13) function inserts a line break into a string
																				   -- The CHAR(9) function inserts a TAB into a string

-- Print 'Variable 1 = '@var1'' -- LINE BREAK --
-- Print 'Variable 2 = '@var2'' to the console
PRINT 'Variable 1 = ' + CONVERT(VARCHAR(5), @var1) + CHAR(13) + 'Variable 2 = ' + CONVERT(VARCHAR(5), @var2)

-- Print 'Variable 1 = '@var1'' -- LINE BREAK --
-- Print 'Variable 2 = '@var2'' to the console -- LINE BREAK --
-- Print the result of '@var1' + '@var2' to the console
PRINT 'Variable 1 = ' + CONVERT(VARCHAR(5), @var1) + CHAR(13) + 'Variable 2 = ' + CONVERT(VARCHAR(5), @var2) + CHAR(13) + 'Total: '
PRINT @var1 + @var2

IF @var1 <= 3 -- IF '@var1' is less or equal to 3
	BEGIN
		-- Output 'Variable is <= to 3'
		PRINT 'Variable 1 <= ' + CONVERT(VARCHAR(5), @var1) + CHAR(13)
	END
ELSE
	BEGIN -- Output 'Variable is not < to 3'
		PRINT 'Variable 1 is not < ' + CONVERT(VARCHAR(5), @var1) + CHAR(13)
	END

IF @var1 != 3 -- IF '@var1' is NOT equal to 3
	BEGIN
		-- Output 'Variable is <= to 3'
		PRINT 'Variable 1 is NOT ' + CONVERT(VARCHAR(5), @var1) + CHAR(13)
	END
ELSE
	BEGIN -- Output 'Variable is not < to 3'
		PRINT 'Variable 1 is not < ' + CONVERT(VARCHAR(5), @var1) + CHAR(13)
	END

DECLARE @var1 INT, @var2 INT -- Declare two variables 'var1' and 'var2' and make them both integers
SET @var1 = 3 -- Set 'var1' to the value 3
SET @var2 = 5 -- Set 'var2' to the value 5

IF @var1 < 2 -- IF '@var1' is less than 2
	BEGIN
		PRINT '@var1 < 2' -- Print 'var1' less than 2
	END
ELSE IF @var1 > 1 AND @var1 < 3 -- ELSE IF '@var1' is greater than 1 and less than 3
	BEGIN
		PRINT '@var1 > 1 AND @var1 < 3' -- Print 'var1' is greater than 1 and less than 3
	END
ELSE IF @var1 = 4 OR @var1 < 6 -- ELSE IF '@var1' is equal to 4 and less than 6
	BEGIN
		PRINT '@var1 = 4 OR @var1 < 6' -- Print 'var1' is equal to 4 and less than 6
	END
ELSE -- ELSE '@var1' does not match any of the above conditional statements
	PRINT '@var1 does not qualify'
