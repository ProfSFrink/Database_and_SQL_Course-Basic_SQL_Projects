-- Advanced Software and Web Developer Diploma
-- Course #7 - Database and SQL
-- School Database Assignment

-- STEP 1) Create a database called 'db_School'
CREATE DATABASE db_School;

USE db_School -- Use database 'db_School'
GO

-- STEP 2) Create a 'Classes' Table called 'tbl_Classes'
CREATE TABLE tbl_Classes (
	class_id INT PRIMARY KEY NOT NULL IDENTITY (1, 1), -- Create a column called 'class_id' which is the table primary key which is an INTEGER which starts at 1000 and increments from their
	class_name VARCHAR(50) NOT NULL -- Create a column called 'class_name' which is a fixed 50 character length string
);

-- STEP 3) Create a 'Students' Table called 'tbl_Students'
CREATE TABLE tbl_Students (
	student_id INT PRIMARY KEY NOT NULL IDENTITY (1, 1), -- Create a column called 'student_id' which is the table primary key which is an INTEGER which starts at 1 and increments from their
	student_name VARCHAR(50) NOT NULL -- Create a column called 'student_name' which is a fixed 50 character length string
);

-- STEP 4) Create a 'Instructors' Table called 'tbl_Instructors'
CREATE TABLE tbl_Instructors (
	instructor_id INT PRIMARY KEY NOT NULL IDENTITY (100, 1), -- Create a column called 'instructor_id' which is the table primary key which is an INTEGER which starts at 1 and increments from their
	instructor_name VARCHAR(50) NOT NULL -- Create a column 'instructor_name' which is a fixed 50 character string
);

-- STEP 5) Add the following Foreign Keys to the 'Students' Table

-- Firstly we add the new columns and set there data types before we set them up as a foreign keys

ALTER TABLE tbl_Students
	ADD class_id INT NULL -- Add a new column called 'class_id' which is an INTEGER

ALTER TABLE tbl_Students
	ADD instructor_id INT NULL -- Add a new column called 'instructor_id' which is an INTEGER

-- Then we add the foreign key constraints to the 'Student' table

ALTER TABLE tbl_Students
	-- Add a constraint to the 'class_id' column which is a FOREIGN KEY which links to the 'class_id' column in the class table
	ADD CONSTRAINT fk_class_id FOREIGN KEY(class_id) REFERENCES tbl_Classes(class_id) ON UPDATE CASCADE ON DELETE CASCADE

ALTER TABLE tbl_Students
	-- Add a constraint to the 'instructor_id' column which is a FOREIGN KEY which links to the 'instructor_id' column in the instructor table
	ADD CONSTRAINT fk_instructor_id FOREIGN KEY(instructor_id) REFERENCES tbl_Instructors(instructor_id) ON UPDATE CASCADE ON DELETE CASCADE

-- STEP 6) Populate the 'Classes' table with two classes

INSERT INTO tbl_Classes -- Insert into the table 'tbl_Classes'
	(class_name) -- into the column 'class_name'
	VALUES -- the values below
	('Software Developer Bootcamp'),
	('C# Boot Camp')
;

SELECT * FROM tbl_Classes -- Test to ensure data added correctly

-- Step 7) Populate the 'Students' table with six students

INSERT INTO tbl_Students -- Insert into the table 'tbl_Students'
	(student_name) -- into the column 'student_name'
	VALUES -- the values below
	('Steven Partlow'),
	('Damien Johnson'),
	('Charlotte Jewell'),
	('Elaine Wright'),
	('Sophia Mattews'),
	('Gavin Cook')
;

SELECT * FROM tbl_Students -- Test to ensure data added correctly

-- Step 8) Populate the 'Instructors' table with two instructors

INSERT INTO tbl_Instructors -- Insert into the table 'tbl_Instructors'
	(instructor_name) -- into the column 'instructor_name'
	VALUES -- the values below
	('Ben Scott'),
	('Kyle Haugen')
;

SELECT * FROM tbl_Instructors -- Test to ensure data added correctly

-- Step 9) Assign values to 'Class_id' in the Students table (Half of the students in one class, half in the other)

UPDATE tbl_Students -- Add half of students to 'class_id = 1' (Software Developer Bootcamp')
	SET class_id = 1
	WHERE student_name = 'Steven Partlow' OR student_name = 'Damien Johnson' OR student_name = 'Charlotte Jewell';

UPDATE tbl_Students -- -- Add half of students to 'class_id = 2' (C# Boot Camp')
	SET class_id = 2
	WHERE student_name = 'Elaine Wright' OR student_name = 'Sophia Mattews' OR student_name = 'Gavin Cook';

SELECT * FROM tbl_Students -- Test to ensure data added correctly

-- Step 10) Assign values to 'instructor_id' in the Students table (Half of the students to on instructor, half to the other)

UPDATE tbl_Students -- Add half of students to 'instructor_id = 100' (Ben Scott)
	SET instructor_id = 100
	WHERE student_name = 'Steven Partlow' OR student_name = 'Damien Johnson' OR student_name = 'Charlotte Jewell';

UPDATE tbl_Students -- Add half of students to 'instructor_id = 101' (Kyle Haugen)
	SET instructor_id = 101
	WHERE student_name = 'Elaine Wright' OR student_name = 'Sophia Mattews' OR student_name = 'Gavin Cook';

SELECT * FROM tbl_Students -- Test to ensure data added correctly

-- Step 11) Run a query to SELECTs all instructor names form the intructor table

SELECT instructor_name AS 'Instructor Name:' -- Use an ALIAS to display the 'instructor_name'
FROM tbl_Instructors

-- Step 12) Run a query to SELECTs all student names from the student table in alphabetical order

SELECT student_name AS 'Student Name:' -- Use and ALIAS to display the 'student_name'
FROM tbl_Students ORDER BY student_name -- Order the results in ascending order by 'student_name'

-- Step 13) Run a query that SELECTs all classes with students and instructors assigned to each class

SELECT 
	tbl_Classes.class_name AS 'Class Name:', -- SELECT column 'class_name' from the 'Classes' table with an ALIAS 'Class Name:'
	tbl_Students.student_name AS 'Student Name:', -- SELECT column 'student_name' from the 'Students' table with an ALIAS 'Student Name:' 
	tbl_Instructors.instructor_name AS 'Instructor Name' -- SELECT column 'instructor_name' from the 'Instructor' table with an ALIAS 'Instructor Name:'
	
	-- SELECT from 'tbl_Classes'
	FROM tbl_Classes
	-- All rows where 'tbl_Students(class_id)' and 'tbl_Classes(class_id)' have matching rows in tables 'tbl_Students' and 'tbl_Classes'
	INNER JOIN tbl_Students ON tbl_Students.class_id = tbl_Classes.class_id
	-- All rows where 'tbl_Instructors(instructor_id)' and 'tbl_Students(instructor_id)' have matching rows in tables 'tbl_Instructors' and 'tbl_Students'
	INNER JOIN tbl_Instructors ON tbl_Instructors.instructor_id = tbl_Students.instructor_id
;