-- Advanced Software and Web Developer Diploma
-- Course #7 - Database and SQL
-- Database and SQL Basic Tutorial Video Series

--
-- DATABASE AND SQL BASIC TUTORIAL - PART 9 (11/10/2022)
--
USE db_zooTest2

EXECUTE [dbo].[createZooDB] -- Executes the stored procedure 'createZooDB'

CREATE PROC getANIMAL_INFO -- Creates a stored procedure called 'getANIMAL_INFO'

@animalName VARCHAR(50) -- Define a variable '@animalName' as a 50 character length string - The value is passed in by the user when the procedure is executed
AS
	BEGIN /* START PROCEDURE */
		SELECT
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
END /* END PROCEDURE */

EXECUTE [dbo].[getANIMAL_INFO] 'brown bear' -- Execute the stored procedure 'getANIMAL_INFO' passing in the parameter 'brown bear'
