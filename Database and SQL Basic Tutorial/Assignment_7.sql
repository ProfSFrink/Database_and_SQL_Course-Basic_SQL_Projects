-- Advanced Software and Web Developer Diploma
-- Course #7 - Database and SQL
-- Assignment #7 - Video Game Database

-- Create a new database 'db_Videogames'
CREATE DATABASE db_Videogames

-- All code that follows to use 'db_Videogames'
USE db_Videogames
GO

CREATE PROCEDURE createVideoGameDB -- Stored procedure to create 'createVideoGameDB'
AS
BEGIN
	/* Create game platform table and insert data */

	CREATE TABLE tbl_platform ( -- Create table 'tbl_platform' for storing game platform data
		platform_id INT PRIMARY KEY NOT NULL IDENTITY(101, 1), -- Create table primary key 'platform_id' which is an integer data type, CANNOT contain null values, primary key will start at 101 and increment by 1
		platform_name VARCHAR(50) NOT NULL, -- Column for 'platform_name' which is a 50 fixed character length string, CANNOT contain null values
		platform_manufacturer VARCHAR(50) NOT NULL, -- Column for 'platform_manufacturer' which is a 50 fixed character length string, CANNOT contain null values
		platform_media VARCHAR(50) NOT NULL, -- Column for 'platform_media' which is a 50 fixed character length string, CANNOT contain null values
		platform_year INT NOT NULL -- Column for 'platform_year' which is an integer data type to represent the year the platform was released, CANNOT contain null values
	); -- End 'tbl_platform'

	INSERT INTO tbl_platform -- Insert into the table 'tbl_platform'
		(platform_name, platform_manufacturer, platform_media, platform_year) -- the columns 'platform_name', 'platform_manufacturer', 'platform_media', and 'platform_year'
		VALUES -- the values as listed below
		/* 101 */ ('Nintendo Switch', 'Nintendo', 'Cartridge', 2017),
		/* 102 */ ('Playstation 4', 'Sony', 'Disc', 2013),
		/* 103 */ ('Windows PC', 'Microsoft', 'Digital', 1985),
		/* 104 */ ('Playstation 5', 'Sony', 'Disc', 2021),
		/* 105 */ ('Playstation', 'Sony', 'Disc', 1994),
		/* 106 */ ('Nintendo 3DS', 'Nintendo', 'Cartridge', 2011)
	;
	
	/* Create game table and insert data */

	CREATE TABLE tbl_games ( -- Create table 'tbl_games' for storing game data
		game_id INT PRIMARY KEY NOT NULL IDENTITY(1, 1), -- Create table primary key 'game_id' which is an integer data type, cannot contain NULL values, primary key will start at 1 and increment by 1
		game_name VARCHAR(100) NOT NULL, -- Column for 'game_name' which is a 100 fixed character length string, CANNOT contain null values
		game_developer VARCHAR(50) NOT NULL, -- Column for 'game_developer' which is a 50 fixed character length string, CANNOT contain null values
		game_genre VARCHAR(50) NOT NULL, -- Column for 'game_genre' which is a 50 fixed character length string, CANNOT contain null values
		
		-- Column for 'game_platform' which is a foreign key of the 'platform_id' the primary key from 'tbl_platform', CANNOT contain null values 
		game_platform INT NOT NULL CONSTRAINT fk_platform_id FOREIGN KEY REFERENCES tbl_platform(platform_id) ON UPDATE CASCADE ON DELETE CASCADE,
		game_year VARCHAR(50) NOT NULL -- Column for 'game_year' which is an integer data type to represent the year the game was released, CANNOT contain null values
	); -- End 'tbl_games'

	INSERT INTO tbl_games -- Insert into the table 'tbl_games'
		(game_name, game_developer, game_genre, game_platform, game_year) -- the columns 'game_name', 'game_developer', 'game_genre', 'game_platform', and 'game_year'
		VALUES -- the values as listed below
		('Front Mission 3', 'Square-Enix', 'Turn-based Strategy', 105, 1999),
		('Xenoblade Chronicles 3', 'Monolith Software', 'Japanese RPG', 101, 2022),
		('Donkey Kong Country: Tropical Freeze', 'Retro Studios', '2D Platformer', 101, 2014),
		('Valkyrie Elysium', 'Square-Enix', 'Japanese RPG', 104, 2022),
		('Trials in the Sky', 'Falcom', 'Japanese RPG', 103, 2004),
		('Devil Survivor Overclocked', 'Atlus', 'Turn-based Strategy', 106, 2011),
		('Teenage Mutant Ninja Turtles: The Cowabunga Collection', 'Dot-emu', 'Beat-em up', 101, 2022),
		('The Diofield Chronicle', 'Square-Enix', 'Turn-based Strategy', 101, 2022),
		('Persona 5: Royal', 'Atlus', 'Japanese RPG', 102, 2020),
		('Trails from Zero', 'Falcom', 'Japanese RPG', 101, 2022)
	;

END

EXECUTE [dbo].[createVideoGameDB] -- Execute stored procedure 'createVideoGameDB'

/* Testing tables have been created and data is working */

SELECT game_id AS 'ID', game_name AS 'Game:', game_developer AS 'Developer:', game_genre AS 'Game Genre:', game_platform AS 'Platform:', game_year AS 'Release Year:' FROM tbl_games

SELECT platform_id AS 'ID:', platform_name AS 'Platform:', platform_manufacturer AS 'Manufacturer:', platform_media AS 'Format:', platform_year AS 'Release Year:' FROM tbl_platform

/* A SELECT query which performs an INNER JOIN using the 'Platform_ID' primary key from the 'tbl_platform' table which is a foreign key in the 'tbl_games' table */
/* It will onlt select games which match the genre given in the WHERE clause */

SELECT
	-- We give 'tbl_games' the alias 'Games' and 'tbl_platform' the alias 'Plat' (As PLATFORM is reserved word)
	-- We SELECT the columns 'game_name', 'game_developer', 'game_genre' and 'game_year' from 'tbl_games' and 'platform_name', 'platform_manufacturer' and 'platform_media' from 'tbl_platform'
	-- giving each aliases
	Games.game_name AS 'Game:', Games.game_developer AS 'Developer:', Games.game_genre AS 'Game Genre', Games.game_year AS 'Game Release Year:', Plat.platform_name AS 'Platform:',
	Plat.platform_manufacturer AS 'Platform Manufacturer', Plat.platform_media AS 'Platform Format:'
	-- We will SELECT the records FROM the 'tbl_games' table
	FROM tbl_games AS Games
	-- An INNER JOIN using the 'platform_id' which will pull rows from both tables that have that field in common
	INNER JOIN tbl_platform AS Plat ON Plat.platform_id = Games.game_platform
	-- We only want to see rows were the 'game_genre' equals 'Japanese RPG'
	WHERE Games.game_genre = 'Japanese RPG'