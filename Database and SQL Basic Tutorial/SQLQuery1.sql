-- Advanced Software and Web Developer Diploma
-- Course #7 - Database and SQL
-- Database and SQL Basic Tutorial Video Series

--
-- DATABASE AND SQL BASIC TUTORIAL - PART 1
--

USE db_zoo; -- Use database db_zoo

CREATE TABLE tbl_animalla ( -- Create a table called 'tbl_animalla'
	animalia_id INT PRIMARY KEY NOT NULL IDENTITY (1,1), -- Create a row called 'animalla_id' which is an integer and also our primary key which cannot have a NULL value and will start at 1 and increment from there.
	animalia_type VARCHAR(50) NOT NULL -- Create a row called 'animalia_type' which is string with a fixed character length of 50.
);

--
-- DATABASE AND SQL BASIC TUTORIAL - PART 2
--

INSERT INTO tbl_animalla -- Insert into the table 'tbl_animalla'.
	(animalia_type) -- the column 'animalia_type'.
	VALUES -- the values below.
	('vertebrate'),
	('invertebrate')
;

SELECT * FROM tbl_animalla; -- Select all rows from the table 'tbl_animalla'.

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
-- DATABASE AND SQL BASIC TUTORIAL - PART 3
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
																									  -- have a primary key numbered between 2 and 5.