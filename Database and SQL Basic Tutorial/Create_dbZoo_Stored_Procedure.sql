-- Advanced Software and Web Developer Diploma
-- Course #7 - Database and SQL
-- Database and SQL Basic Tutorial Video Series

--
-- DATABASE AND SQL BASIC TUTORIAL - PART 9 (11/10/2022)
--

-- We don't need this code again as we have already created the database
-- CREATE DATABASE db_zooTest2 -- Create database 'db_zooTest2'

CREATE PROCEDURE createZooDB -- Start creating a stored procedure called 'createZooDB'
AS
BEGIN -- START PROCEDURE --

	/* THIS SECTION CREATES ALL THE TABLES AND THERE RESPECTIVE COLUMNS WITH APPROPRIATE DATA TYPES */

	CREATE TABLE tbl_animalia ( -- Create a table called 'tbl_animalla'
		animalia_id INT PRIMARY KEY NOT NULL IDENTITY (1,1), -- Create a row called 'animalla_id' which is an integer and also our primary key which cannot have a NULL value and will start at 1 and increment from there.
		animalia_type VARCHAR(50) NOT NULL -- Create a row called 'animalia_type' which is string with a fixed character length of 50.
	);

	CREATE TABLE tbl_class ( -- Create a table called 'tbl_class'
		class_id INT PRIMARY KEY NOT NULL IDENTITY (100,1), -- Create a row called 'class_id' which is an integer and also our primary key which cannot have a NULL value and will start at 100 and increment from there.
		class_type VARCHAR(50) NOT NULL -- Create a row called 'class_type' which is string with a fixed character length of 50.
	);

	CREATE TABLE tbl_order ( -- Create a table called 'tbl_order' NOTE: NOT NULL means a column MUST contain a value.
		order_id INT PRIMARY KEY NOT NULL IDENTITY (1,1),  -- Create a row called 'order_id' which is an integer but also our primary key which cannot have a NULL value and will start at 1 and increment by 1 from there.
		order_type VARCHAR(50) NOT NULL -- Create a row called 'order_type' which is a string with a fixed character length of 50.
	);

	CREATE TABLE tbl_care ( -- Create a table called 'tbl_care' NOTE: NOT NULL means a column MUST contain a value.
		care_id VARCHAR(50) PRIMARY KEY NOT NULL, -- Create a row called 'care_id' which is an 50 chaarcter fixed length string but also our primary key which cannot have a NULL value.
		care_type VARCHAR(50) NOT NULL, -- Create a row called 'care_type' which is a string with a fixed character length of 50.
		care_specialist INT NOT NULL -- Create a row called 'care_specialist' which is an integer.
	);

	CREATE TABLE tbl_nutrition ( -- Create a table called 'tbl_nutrition' NOTE: NOT NULL means a column MUST contain a value.
		nutrition_id INT PRIMARY KEY NOT NULL IDENTITY (2200,1), -- Create a row called 'nutrition_id' which is a integer value but also our primary key which cannot have a NULL value and will start at 2200 and increment by 1 from there.
		nutrition_type VARCHAR(50) NOT NULL, -- Create a row called 'nutrition_type' which is a string with a fixed character length of 50.
		nutrition_cost MONEY NOT NULL -- Create a row called 'nutrition_cost' which is a money value.
	);

	CREATE TABLE tbl_habitat ( -- Create a table called 'tbl_habitat' NOTE: NOT NULL means a column MUST contain a value.
		habitat_id INT PRIMARY KEY NOT NULL IDENTITY (5000,1), -- Create a row called 'habitat_id' which is a integer value but also our primary key which cannot have a NULL value and will start at 5000 and increment by 1 from there.
		habitat_type VARCHAR(50) NOT NULL, -- Create a row called 'habitat_type' which is a string with a fixed character length of 50.
		habitat_cost MONEY NOT NULL -- Create a row called 'habitat_cost' which is a money value.
	);

	CREATE TABLE tbl_specialist ( -- Create a table called 'tbl_specialist' NOTE: NOT NULL means a column MUST contain a value.
		specialist_id INT PRIMARY KEY NOT NULL IDENTITY (1,1), -- Create a row called 'specialist_id' which is a integer value but also our primary key which cannot have a NULL value and will start at 1 and increment by 1 from there.
		specialist_fname VARCHAR(50) NOT NULL, -- Create a row called 'specialist_fname' which is a string with a fixed character length of 50.
		specialist_lname VARCHAR(50) NOT NULL, -- Create a row called 'specialist_lname' which is a string with a fixed character length of 50.
		specialist_contact VARCHAR(50) NOT NUll -- Create a row called 'specialist_contact' which is a string with a fixed character length of 50.
	);

	CREATE TABLE tbl_species ( -- Create table 'tbl_species'

		species_id INT PRIMARY KEY NOT NULL IDENTITY (1,1), -- Create a row called 'species_id' which is a integer value but also our primary key which cannot have a NULL value and will start at 1 and increment by 1 from there.
		species_name VARCHAR(50) NOT NULL, -- Create a row called 'species_name' which is a string with a fixed character length of 50.

		-- Create a row called 'species_animalia' which is a foreign key linked to the 'animalia_id' column in the table 'tbl_animalia'.
		species_animalia INT NOT NULL CONSTRAINT fk_animalia_id FOREIGN KEY REFERENCES tbl_animalia(animalia_id) ON UPDATE CASCADE ON DELETE CASCADE,

		-- Create a row called 'species_class' which is a foreign key linked to the 'class_id' column in the table 'tbl_class'.
		species_class INT NOT NULL CONSTRAINT fk_class_id FOREIGN KEY REFERENCES tbl_class(class_id) ON UPDATE CASCADE ON DELETE CASCADE,

		-- Create a row called 'species_order' which is a foreign key linked to the 'order_id' column in the table 'tbl_order'.
		species_order INT NOT NULL CONSTRAINT fk_order_id FOREIGN KEY REFERENCES tbl_order(order_id) ON UPDATE CASCADE ON DELETE CASCADE,

		-- Create a row called 'species_habitat' which is a foreign key linked to the 'habitat_id' column in the table 'tbl_habitat'.
		species_habitat INT NOT NULL CONSTRAINT fk_habitat_id FOREIGN KEY REFERENCES tbl_habitat(habitat_id) ON UPDATE CASCADE ON DELETE CASCADE,

		-- Create a row called 'species_nutrition' which is a foreign key linked to the 'nutrition_id' column in the table 'tbl_nutrition'.
		species_nutrition INT NOT NULL CONSTRAINT fk_nutrition_id FOREIGN KEY REFERENCES tbl_nutrition(nutrition_id) ON UPDATE CASCADE ON DELETE CASCADE,

		-- Create a row called 'species_care' which is a foreign key linked to the 'care_id' column in the table 'tbl_care'.
		species_care VARCHAR(50) NOT NULL CONSTRAINT fk_care_id FOREIGN KEY REFERENCES tbl_care(care_id) ON UPDATE CASCADE ON DELETE CASCADE
	);

	/* THIS SECTION INSERT DATA INTO OUR TABLES */

	INSERT INTO tbl_animalia -- Insert into the table 'tbl_animalla'.
		(animalia_type) -- the column 'animalia_type'.
		VALUES -- the values below.
		('vertebrate'),
		('invertebrate')
	;

	SELECT * FROM tbl_animalia; -- Select all rows from the table 'tbl_animalla'.

	INSERT INTO tbl_class -- Insert into the table 'tbl_class'.
		(class_type) -- the column 'class_type'.
		VALUES -- the values below.
		('bird'),
		('reptilian'),
		('mammel'),
		('arthropod'),
		('fish'),
		('worm'),
		('cnidaria'),
		('echinoderm')
	;

	SELECT * FROM tbl_class; -- Select all rows from the table 'tbl_class'.

	INSERT INTO tbl_order -- Insert into the table 'tbl_order'.
		(order_type) -- into the columns 'order_type'.
		VALUES -- the values below.
		('carvivore'),
		('herbivore'),
		('omnivore')
	;

	SELECT * FROM tbl_order; -- Select all rows from table 'tbl_order'.

	INSERT INTO tbl_care -- Insert into the table 'tbl_care'.
		(care_id, care_type, care_specialist) -- into the columns 'care_id','care_type','care_specialist'.
		VALUES -- the values below.
		('care_0', 'replace the straw' ,1),
		('care_1', 'repair or replace broken toys' ,4),
		('care_2', 'bottle feed vitamins' ,1),
		('care_3', 'human contact_pet subject' ,2),
		('care_4', 'clean up animal waste' ,1),
		('care_5', 'move subject to excercise pen' ,3),
		('care_6', 'drain and refill aquarium' ,1),
		('care_7', 'extensive dental work' ,3)
	;

	SELECT * FROM tbl_care; -- Select all rows from table 'tbl_care'.

	INSERT INTO tbl_nutrition -- Insert into the table 'tbl_nutrition'.
		(nutrition_type, nutrition_cost) -- into the columns 'nutrition_type','nutrition_cost'.
		VALUES -- the values below.
		('raw fish', 1500),
		('living rodents', 600),
		('mixture of fruit and rice', 800),
		('warm bottle of milk', 600),
		('syringe fed broth', 600),
		('lard and seed mix', 300),
		('aphids', 150),
		('vitamins and marrow', 3500)
	;

	SELECT * FROM tbl_nutrition; -- Select all rows from table 'tbl_nutrition'.

	INSERT INTO tbl_habitat -- Insert into the table 'tbl_habitat'.
		(habitat_type, habitat_cost) -- into the columns 'habitat_type', 'habitat_cost'.
		VALUES -- the values below.
		('tundra', 40000),
		('grassy knoll with trees', 12000),
		('10 ft pond and rocks', 30000),
		('icy aquarium with snowy facade', 50000),
		('short grass, shade and moat', 50000),
		('netted forest atrium', 1000),
		('jungle vines and winding branches', 15000),
		('cliff with shaded cave', 15000)
	;

	SELECT * FROM tbl_habitat; -- Select all rows from table 'tbl_habitat'.

	INSERT INTO tbl_specialist -- Insert into the table 'tbl_specialist'.
		(specialist_fname, specialist_lname, specialist_contact) -- into the columns 'specialist_fname', 'specialist_lname', ''specialist_contact'.
		VALUES -- the values below.
		('margaret', 'nguyen', '384-576-2899'),
		('mary', 'fischer', '384-784-4856'),
		('arnold', 'holden', '385-475-3944'),
		('kem', 'byesan', '384-485-4855'),
		('delmote', 'fyedo', '768-288-3749')
	;

	SELECT * FROM tbl_specialist; -- Select all rows from table 'tbl_specialist'.

	INSERT INTO tbl_species -- Insert into the table 'tbl_species'.
		(species_name, species_animalia, species_class, species_order, species_habitat, species_nutrition, species_care) -- into the columns 'species_name', 'species_animalia', 'species_class','species_order',species_habitat',species_nutrition',species_care'.
		VALUES -- the values below.
		('brown bear', 1, 102, 3, 5007, 2200, 'care_1'),
		('jaguar', 1, 102, 1, 5007, 2200, 'care_4'),
		('penguin', 1, 100, 1, 5003, 2200, 'care_6'),
		('ghost bat', 1, 102, 1, 5007, 2204, 'care_2'),
		('chicken', 1, 100, 3, 5001, 2205, 'care_0'),
		('panda', 1, 102, 3, 5006, 2202, 'care_4'),
		('bobcat', 1, 102, 1, 5001, 2204, 'care_5'),
		('grey wolf', 1, 102, 1, 5000, 2201, 'care_4')
	;

	SELECT * FROM tbl_species; -- Select all rows from table 'tbl_species'.

	/* This SELECT Statement queries the database using the INNER JOIN method */

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
		-- And the species_name is equal to 'brown bear'
		WHERE species_name = 'brown bear'
	;

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
		-- And the species_name is equal to 'brown bear'
		WHERE species_name = 'ghost bat'
	;

	SELECT
		-- Create aliases for the species, habitat and nutrition tables
		a1.species_name, a2.habitat_type, a2.habitat_cost,
		a3.nutrition_type, a3.nutrition_cost
		-- Select from the species table
		FROM tbl_species a1
		-- All results where 'habitat_id' and 'species_habitat' have matching rows in tables 'habitat' and 'species'
		INNER JOIN tbl_habitat a2 ON a2.habitat_id = a1.species_habitat
		-- All results where 'habitat_id' and 'species_nutrition' have matching rows in tables 'nutrition' and 'species'
		INNER JOIN tbl_nutrition a3 ON a3.nutrition_id = a1.species_nutrition
		WHERE species_name = 'ghost bat'
	;

END -- END PROCEDURE --