/* movies.sql */

DROP TABLE IF EXISTS movies;

CREATE TABLE IF NOT EXISTS movies (
    id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    genre TEXT NOT NULL,
    year INTEGER NOT NULL,
    imdb_rating REAL NOT NULL
);

INSERT INTO movies (id, name, genre, year, imdb_rating)
VALUES (1, "Avatar", "action", 2009, 7.9),
    (2, "Jurassic World", "action", 2015, 7.3),
    (3, "The Avengers", "action", 2012, 8.1),
    (4, "The Dark Knight", "action", 2008, 9.0),
    (5, "Star Wars: Episode I - The Phantom Menace", "action", 1999, 6.6),
    (6, "Star Wars", "action", 1977, 8.7),
    (7, "Avengers: Age of Ultron", "action", 2015, 7.9),
    (8, "The Dark Knight Rises", "action", 2012, 8.5),
    (9, "Pirates of the Caribbean: Dead Mans Chest", "action", 2006, 7.3),
    (10, "Iron Man 3", "action", 2013, 7.3),
    (11, "SpiderMan", "action", 2002, 7.3),
    (12, "Transformers: Revenge of the Fallen", "action", 2009, 6.0),
    (13, "Star Wars: Episode III - Revenge of the Sith", "action", 2005, 7.7),
    (14, "SpiderMan 2", "action", 2004, 7.3),
    (15, "Transformers: Dark of the Moon", "action", 2011, 6.3),
    (16, "American Sniper", "action", 2014, 7.4),
    (17, "Furious Seven", "action", 2015, 7.4),
    (18, "SpiderMan 3", "action", 2007, 6.2),
    (19, "Guardians of the Galaxy", "action", 2014, 8.1),
    (20, "Transformers", "action", 2007, 7.1),
    (21, "Ghostbusters", "comedy", 1984, 7.8),
    (22, "Rush Hour 2",	"comedy", 2001,	6.6),
    (23, "Gremlins", "horror", 1984, 7.2),
    (24, "The Blair Witch Project", "horror", 1999,	6.4),
    (25, "Little Fockers", "romance", 2010,	5.5),
    (26, "As Good as It Gets", "romance", 1997, 7.8),
    (27, "Se7en", "drama", 1995, 8.6),
    (28, "Seven", "drama", 1979, 6.1);

SELECT * FROM movies;

SELECT name, genre, year
FROM movies;

SELECT imdb_rating AS 'IMDb' 
FROM movies;

SELECT DISTINCT year
FROM movies;

SELECT * 
FROM movies 
WHERE year > 2014;

SELECT * 
FROM movies
WHERE name LIKE 'Se_en';

SELECT * 
FROM movies
WHERE name LIKE 'The %';

SELECT name
FROM movies 
WHERE imdb_rating IS NULL;

SELECT *
FROM movies
WHERE year BETWEEN 1970 AND 1979;

SELECT *
FROM movies
WHERE year < 1985 AND genre = "action";

SELECT *
FROM movies
WHERE genre = "romance"
   OR genre = 'comedy';

SELECT name, year, imdb_rating
FROM movies
ORDER BY imdb_rating DESC;

SELECT *
FROM movies ORDER BY imdb_rating DESC
LIMIT 3;

SELECT name,
 CASE
  WHEN genre = "romance" THEN
"Chill"
  WHEN genre = "comedy" THEN
"Chill"
  ELSE "Intense"
END AS "Mood"
FROM movies;

