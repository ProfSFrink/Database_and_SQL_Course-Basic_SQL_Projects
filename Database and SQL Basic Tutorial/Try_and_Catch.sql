-- Advanced Software and Web Developer Diploma
-- Course #7 - Database and SQL
-- Database and SQL Basic Tutorial Video Series

--
-- DATABASE AND SQL BASIC TUTORIAL - PART 10 (12/10/2022)
--

USE db_zooTest2
GO

DECLARE @animalName VARCHAR(50) -- Declare a 50 fixed-character length string called '@animalName' 
DECLARE @errorString VARCHAR(100) -- Declare a 100 fixed-character length string called '@errorString'
DECLARE @results AS VARCHAR(5) -- Declare a 5 fixed-character length string called '@results'

SET @animalName = 'jaguar' -- Set '@animalName' to this value
SET @errorString = 'There are no ' + @animalName + '''s found at this zoo.' -- Concatenate '@animalName' into this error string

BEGIN TRY -- Start of TRY Block
	-- Count how many rows appear in 'tbl_species' were the 'species.name' is equal to '@animalName'
	SET @results = (SELECT COUNT(tbl_species.species_name) FROM tbl_species WHERE species_name = @animalName)
	IF @results = 0 -- Then IF we have no rows with that name
		BEGIN
			RAISERROR(@errorString, 16, 1) -- We throw an error
			RETURN
		END -- End IF
	ELSE IF @results = 1 -- ELSE IF we have 1 row with that name
		BEGIN
			SELECT -- We execte our query to get the data from the database
			-- Create aliases 'a1 through a7' for our tables
			a1.species_name, a2.animalia_type,
			a3.class_type, a4.order_type, a5.habitat_type,
			a6.nutrition_type, a7.care_type
			-- Select from the species table
			FROM tbl_species a1
			-- All results where 'animalia_id' and 'species_animalia' have matching rows in tables 'animalia' and 'species'
			INNER JOIN tbl_animalia a2 ON a2.animalia_id = a1.species_animalia
			-- All results where 'class_id' and 'species_class' have matching rows in tables 'class' and 'species'
			INNER JOIN tbl_class a3 ON a3.class_id = a1.species_class
			-- All results where 'order_id' and 'species_order' have matching rows in tables 'order' and 'species'
			INNER JOIN tbl_order a4 ON a4.order_id = a1.species_order
			-- All results where 'habitat_id' and 'species_habitat' have matching rows in tables 'habitat' and 'species'
			INNER JOIN tbl_habitat a5 ON a5.habitat_id = a1.species_habitat
			-- All results where 'nutrition_id' and 'species_nutrition' have matching rows in tables 'nutrition' and 'species'
			INNER JOIN tbl_nutrition a6 ON a6.nutrition_id = a1.species_nutrition
			-- All results where 'care_id' and 'species_care' have matching rows in tables 'care' and 'species'
			INNER JOIN tbl_care a7 ON a7.care_id = a1.species_care
			-- And the species_name is equal to the value of @animalName
			WHERE species_name = @animalName
			;
		END -- End ELSE IF
END TRY -- End of TRY Block

BEGIN CATCH -- Start of CATCH Block
	SELECT @errorString = ERROR_MESSAGE() -- Use the built-in 'ERROR_MESSAGE' function and pass in out 'errorString' string
	RAISERROR (@errorString, 10, 1)
END CATCH -- End of CATCH Block