DROP TABLE movies;
DROP TABLE people;

CREATE TABLE movies (
	id SERIAL8 PRIMARY KEY,
	title VARCHAR(255),
	year INT2,
	show_time VARCHAR(255)
);

CREATE TABLE people (
	id SERIAL8 PRIMARY KEY,
	name VARCHAR(255)
);

INSERT INTO people (name) VALUES ('Tom Clyde');
INSERT INTO people (name) VALUES ('Chris Hontoir');
INSERT INTO people (name) VALUES ('James Jardine');
INSERT INTO people (name) VALUES ('Cassia Lonsdale');
INSERT INTO people (name) VALUES ('David MacMurray');
INSERT INTO people (name) VALUES ('Jennifer Mariyadas');
INSERT INTO people (name) VALUES ('Antonio Horta Osario');
INSERT INTO people (name) VALUES ('Steven Raferty');
INSERT INTO people (name) VALUES ('Conor Wilson');


INSERT INTO movies (title, year, show_time) VALUES ('Iron Man', 2008, '15:15');
INSERT INTO movies (title, year, show_time) VALUES ('The Incredible Hulk', 2008, '22:05');
INSERT INTO movies (title, year, show_time) VALUES ('Iron Man 2', 2010, '18:05');
INSERT INTO movies (title, year, show_time) VALUES ('Thor', 2011, '13:00');
INSERT INTO movies (title, year, show_time) VALUES ('Captain America: The First Avenger', 2011, '22:15');
INSERT INTO movies (title, year, show_time) VALUES ('Avengers Assemble', 2012, '23:25');
INSERT INTO movies (title, year, show_time) VALUES ('Iron Man 3', 2013, '12:05');
INSERT INTO movies (title, year, show_time) VALUES ('Thor: The Dark World', 2013, '13:25');
INSERT INTO movies (title, year, show_time) VALUES ('Batman Begins', 2005, '23:55');
INSERT INTO movies (title, year, show_time) VALUES ('Captain America: The Winter Soldier', 2014, '19:40');
INSERT INTO movies (title, year, show_time) VALUES ('Guardians of the Galaxy', 2014, '18:55');
INSERT INTO movies (title, year, show_time) VALUES ('Avengers: Age of Ultron', 2015, '21:10');
INSERT INTO movies (title, year, show_time) VALUES ('Ant-Man', 2015, '15:20');
INSERT INTO movies (title, year, show_time) VALUES ('Captain America: Civil War', 2016, '22:45');
INSERT INTO movies (title, year, show_time) VALUES ('Doctor Strange', 2016, '22:00');
INSERT INTO movies (title, year, show_time) VALUES ('Guardians of the Galaxy 2', 2017, '15:30');
INSERT INTO movies (title, year, show_time) VALUES ('Spider-Man: Homecoming', 2017, '17:05');
INSERT INTO movies (title, year, show_time) VALUES ('Thor: Ragnarok', 2017, '18:20');
INSERT INTO movies (title, year, show_time) VALUES ('Black Panther', 2018, '20:10');

-- Question One
SELECT * FROM movies;

-- Question Two
SELECT name FROM people;

-- Question Three
UPDATE people
	SET name = 'Stephen Rafferty'
	WHERE name = 'Steven Raferty';

-- Question Four
SELECT name FROM people
WHERE name = 'Chris Hontoir';

-- Question Five
DELETE FROM movies
WHERE title = 'Batman Begins';

-- Question Six
INSERT INTO people (name) VALUES ('Keith Douglas');

-- Question Seven
DELETE FROM people
WHERE name = 'Antonio Horta Osario';

-- Question Eight
INSERT INTO movies (title, year, show_time) VALUES ('Avengers:Infinity War', 2018, '00:00');

-- Question Nine
SELECT * FROM movies
WHERE title = 'Guardians of the Galaxy';

UPDATE movies
	SET show_time = '20:55'
	WHERE title = 'Guardians of the Galaxy 2';

-- Extension (Cinema had to close earlier)
DELETE FROM movies
WHERE show_time BETWEEN '21:00' AND '23:59';
