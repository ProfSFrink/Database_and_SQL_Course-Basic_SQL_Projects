-- Advanced Software and Web Developer Diploma
-- Course #7 - Database and SQL
-- Database and SQL Basic Tutorial Video Series

--
-- DATABASE AND SQL BASIC TUTORIAL - PART 1 (05/10/2022)
--

CREATE DATABASE db_zoo; -- Create a database called 'db_zoo';

USE db_zoo; -- Use database db_zoo

CREATE TABLE tbl_animalia ( -- Create a table called 'tbl_animalla'
	animalia_id INT PRIMARY KEY NOT NULL IDENTITY (1,1), -- Create a row called 'animalla_id' which is an integer and also our primary key which cannot have a NULL value and will start at 1 and increment from there.
	animalia_type VARCHAR(50) NOT NULL -- Create a row called 'animalia_type' which is string with a fixed character length of 50.
);

--
-- DATABASE AND SQL BASIC TUTORIAL - PART 2 (05/10/2022)
--

INSERT INTO tbl_animalia -- Insert into the table 'tbl_animalla'.
	(animalia_type) -- the column 'animalia_type'.
	VALUES -- the values below.
	('vertebrate'),
	('invertebrate')
;

SELECT * FROM tbl_animalia; -- Select all rows from the table 'tbl_animalla'.

CREATE TABLE tbl_class ( -- Create a table called 'tbl_class'
	class_id INT PRIMARY KEY NOT NULL IDENTITY (100,1), -- Create a row called 'class_id' which is an integer and also our primary key which cannot have a NULL value and will start at 100 and increment from there.
	class_type VARCHAR(50) NOT NULL -- Create a row called 'class_type' which is string with a fixed character length of 50.
);

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

--
-- DATABASE AND SQL BASIC TUTORIAL - PART 3 (06/10/2022)
--

UPDATE tbl_class SET class_type = 'bird' WHERE class_type = 'birds'; -- Replace an instance of the value 'bird' in the 'class_type' column with the value 'birds'

SELECT REPLACE(class_type, 'bird', 'birds') FROM tbl_class; -- Temporaily replace any instance of 'bird' with 'birds' in the 'class_type' column in the table 'tbl_class'.

SELECT class_type FROM tbl_class WHERE class_type = 'bird'; -- Select all records within table 'tbl_class' where the 'class_type' column equals 'bird'

SELECT UPPER(class_type) FROM tbl_class WHERE class_type = 'bird'; -- Select all records within table 'tbl_class' where the 'class_type' column equals 'bird' but return all results as uppercase.

SELECT COUNT(class_type) FROM tbl_class WHERE class_type = 'bird'; -- Count all records within table 'tbl_class' where the 'class_type' column equals 'bird' and return the number of matching columns.

CREATE TABLE tbl_persons ( -- Create a table called 'tbl_persons'
	persons_id INT PRIMARY KEY NOT NULL IDENTITY (1,1), -- Create a row called 'persons_id' which is an integer and also our primary key which cannot have a NULL value and will start at 1 and increment by 1 for each row.
	persons_fname VARCHAR(50) NOT NULL, -- Create a row called 'persons_fname' which is string with a fixed character length of 50.
	persons_lname VARCHAR(50) NOT NULL, -- Create a row called 'persons_lname' which is string with a fixed character length of 50.
	persons_contact VARCHAR(50) NOT NULL -- Create a row called 'persons_contact' which is string with a fixed character length of 50.
);

INSERT INTO tbl_persons -- Insert into the table 'tbl_persons'.
	(persons_fname,persons_lname,persons_contact) -- into the columns 'persons_fname','persons_lname','persons_contact'.
	VALUES -- the values below.
	('bob','smith','232-345-5768'),
	('mary','ann','232-345-5768'),
	('tex','burns','232-345-5768'),
	('gerry','kerns','232-345-5768'),
	('sally','fields','232-345-5768')
;
SELECT * FROM tbl_persons; -- Select all records from the table 'tbl_persons'.

SELECT persons_fname, persons_lname, persons_contact FROM tbl_persons WHERE persons_id BETWEEN 2 AND 5; -- Select records from the table 'tbl_persons' with the column headings 'persons_fname', 'persons_lname', 'persons_contact'
																										-- have a primary key numbered between 2 and 5.

SELECT persons_fname, persons_lname, persons_contact FROM tbl_persons WHERE persons_lname LIKE 'ke%'; -- Select records from the table 'tbl_persons' with the column headings 'persons_fname', 'persons_lname', 'persons_contact'
																									  -- have 'ke' as the starting letters in the 'persons_lname' field.

--
-- DATABASE AND SQL BASIC TUTORIAL - PART 4 (08/10/2022)
--

SELECT persons_fname, persons_lname, persons_contact FROM tbl_persons WHERE persons_lname LIKE '_u%s'; -- Select records from the table 'tbl_persons' with the column headings 'persons_fname', 'persons_lname', 'persons_contact'
																									   -- have 'u' and 's' anywhere in the 'persons_lname' field.

UPDATE tbl_persons SET persons_fname = 'mars' WHERE persons_fname = 'bob'; -- Within the table 'tbl_persons' change any rows in the 'persons_fname' column were 'persons_fname' equals 'bob'.

SELECT persons_fname, persons_lname, persons_contact FROM tbl_persons WHERE persons_fname LIKE 'm%' ORDER BY persons_lname; -- Select records from the table 'tbl_persons' with the column headings 'persons_fname', 'persons_lname', 'persons_contact'
																									                        -- have the 'persons_fname' field starting with the letter 'm' but sort the results by the 'persons_lname. 

SELECT persons_fname AS 'First Name', persons_lname AS 'Last Name', persons_contact AS 'Phone:' FROM tbl_persons WHERE persons_fname LIKE 'm%' ORDER BY persons_lname; -- Repeat the same as above but now in addition use ALIASES to present the
																																									   -- column name 'persons_fname' as 'First Name', 'persons_lname' as 'Last Name' and 'persons_contact' as 'Phone:'

DELETE FROM tbl_persons WHERE persons_lname = 'smith' -- Delete all rows from table 'tbl_persons' were the 'persons_lname' column equals 'smith'.

DROP TABLE tbl_persons; -- Will delete the table 'tbl_persons'.

-- WE ARE NOW FINISHED WITH 'Persons' TABLE AND WILL RETURN TO THE 'ZOO' DATABASE THAT WE STARTED IN THE PRIOR VIDEOS.

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

--
-- DATABASE AND SQL BASIC TUTORIAL - PART 5 (08/10/2022)
--

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

CREATE TABLE tbl_species ( -- Create table 'tbl_species'
	--
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

INSERT INTO tbl_species -- Insert into the table 'tbl_species'.
	(species_name, species_animalia, species_class, species_order, species_habitat, species_nutrition, species_care) -- into the columns 'species_name', 'species_animalia', 'species_class','species_order',species_habitat',species_nutrition',species_care'.
	VALUES -- the values below.
	('brown bear', 1, 102, 3, 5007, 2200, 'care_1'),
	('jaguear', 1, 102, 1, 5007, 2200, 'care_4'),
	('penguin', 1, 100, 1, 5003, 2200, 'care_6'),
	('ghost bat', 1, 102, 1, 5007, 2204, 'care_2'),
	('chicken', 1, 100, 3, 5001, 2205, 'care_0'),
	('panda', 1, 102, 3, 5006, 2202, 'care_4'),
	('bobcat', 1, 102, 1, 5001, 2204, 'care_5'),
	('grey wolf', 1, 102, 1, 5000, 2201, 'care_4')
;

SELECT * FROM tbl_species WHERE species_name = 'chicken'; -- Select all rows from table 'tbl_species'.

--
-- DATABASE AND SQL BASIC TUTORIAL - PART 6 (09/10/2022)
--

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