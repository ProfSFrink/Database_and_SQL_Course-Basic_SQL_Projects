USE db_zoo; -- Use database db_zoo

CREATE TABLE tbl_animalla ( -- Create a table called 'tbl_animalla'
	animalia_id INT PRIMARY KEY NOT NULL IDENTITY (1,1), -- Create a row called 'animalla_id' which is an integer and also our primary key which cannot have a NULL value and will start at 1 and increment from there.
	animalia_type VARCHAR(50) NOT NULL -- Create a row called 'animalia_type' which is string with a fixed character length of 50.
);

INSERT INTO tbl_animalla -- Insert into the table 'tbl_animalla'.
	(animalia_type) -- Into the column 'animalia_type'.
	VALUES -- The values below.
	('vertebrate'),
	('invertebrate')
;

SELECT * FROM tbl_animalla; -- Select all rows from the table 'tbl_animalla'.

CREATE TABLE tbl_class ( -- Create a table called 'tbl_class'
	class_id INT PRIMARY KEY NOT NULL IDENTITY (100,1), -- Create a row called 'class_id' which is an integer and also our primary key which cannot have a NULL value and will start at 100 and increment from there.
	class_type VARCHAR(50) NOT NULL -- Create a row called 'class_type' which is string with a fixed character length of 50.
);

INSERT INTO tbl_class -- Insert into the table 'tbl_class'.
	(class_type) -- Into the column 'class_type'.
	VALUES -- The values below.
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