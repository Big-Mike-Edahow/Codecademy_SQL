/* friends.sql */

DROP TABLE IF EXISTS friends;

CREATE TABLE IF NOT EXISTS friends (
    id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    birthday DATE NOT NULL
);

INSERT INTO friends (id, name, birthday)
VALUES (1, "Ororo Munroe", "1940-05-30");

SELECT * FROM friends;

INSERT INTO friends (id, name, birthday)
VALUES (2, "Oscar the Grouch", "1950-06-22");

INSERT INTO friends (id, name, birthday)
VALUES (3, "Big Bird", "1960-07-17");

SELECT * FROM friends;

UPDATE friends
SET name = 'Storm' 
WHERE id = 1; 

SELECT * FROM friends;

ALTER TABLE friends ADD COLUMN email TEXT;

UPDATE friends
SET email = 'storm@codecademy.com' 
WHERE id = 1; 

UPDATE friends
SET email = 'oscar_t_grouch@yahoo.com' 
WHERE id = 2; 

UPDATE friends
SET email = 'yellow_ostritch@hotmail.com' 
WHERE id = 3;

SELECT * FROM friends;

DELETE FROM friends WHERE id = 1;

SELECT * FROM friends;
