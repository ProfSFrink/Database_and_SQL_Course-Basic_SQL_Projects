-- Advanced Software and Web Developer Diploma
-- Course #7 - Database and SQL
-- Zoo Database Assignment

-- Zoo Database Assignment #1 (12/10/2022)

/* Use 'db_zooTest2 ' database for this assignment */
USE db_zooTest2
GO

/* SELECT all data from the 'tbl_habitat' table */
SELECT * FROM tbl_habitat

-- Zoo Database Assignment #2 (12/10/2022)

/* SELECT all names from the 'species_name' column that have a 'species_order' value of 3*/
SELECT species_name FROM tbl_species WHERE species_order = 3

-- Zoo Database Assignment #3 (12/10/2022)

/* SELECT all 'nutrition_types' from the 'tbl_nutrition' table that have a 'nutrition_cost' of 600.00 or less */
SELECT nutrition_type FROM tbl_nutrition WHERE nutrition_cost <= 600.00

-- Zoo Database Assignment #4 (12/10/2022)

/* SELECT all 'species_names' with the 'nutrition_id' between 2202 and 2206 from the 'tbl_nutrition' table. */
SELECT species_nutrition, species_name FROM tbl_species WHERE species_nutrition BETWEEN 2202 AND 2206

-- Zoo Database Assignment #5 (12/10/2022)

/* SELECT all names within the 'species_name' column using the alias "Species Name:" from the 'tbl_species' table and their corresponding 'nutrition_type' under the alias "Nutrition Type:" from the 'tbl_nutrition' table. */
SELECT species_name AS 'Species Name:', species_nutrition AS 'Nutrition Type:' FROM tbl_species

-- Zoo Database Assignment #6 (12/10/2022)

/* SELECT the first name, last name and contact number from 'tbl_specialist' for the people that provide care to penguins from the species table */

/* NOTE: 'tbl_species.species_care' links to 'tbl_care.care_id' which then has the connection to the 'tbl_specialist.care_specialist'*/

SELECT
	-- We SELECT the First, Last Name and Contact info from 'tbl_specialist' and the Species Name and Care ID from 'tbl_species' along with Care Type from 'tbl_care'
	a1.specialist_fname AS 'Specialist First Name:', a1.specialist_lname AS 'Specialist Second Name:', a1.specialist_contact AS 'Specialist Contact Info:',
	a2.species_name AS 'Species Name', a2.species_care AS 'Care ID', a3.care_type AS 'Care Type:'
		
	FROM tbl_specialist a1
	
	-- NOTE: I am performing an extra JOIN so I can use data from three tables in my answer for this assignment
		
	-- We first JOIN 'care_specialist' in 'tbl_care' to 'specialist_id' in 'tbl_specialist' so we can retrieve which specialist performs the correct care type (care_6)
	INNER JOIN tbl_care a3 ON a3.care_specialist = a1.specialist_id

	-- Then JOIN the 'species_care' in 'tbl_species' to 'care_id' from 'tbl_care'
	INNER JOIN tbl_species a2 ON a2.species_care = a3.care_id

	WHERE care_id = 'care_6' -- 'care_6' is for people for care for penguins
;