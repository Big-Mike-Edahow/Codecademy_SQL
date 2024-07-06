/* celebs.sql */

DROP TABLE IF EXISTS celebs;

CREATE TABLE IF NOT EXISTS celebs (
    id	INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    age	INTEGER NOT NULL
);

INSERT INTO celebs (id, name, age) VALUES
(1,	"Justin Bieber", 22),
(2,	"Beyonce Knowles", 33),
(3,	"Jeremy Lin", 26),
(4,	"Taylor Swift",	26);

ALTER TABLE celebs 
ADD COLUMN twitter_handle TEXT;

UPDATE celebs 
SET twitter_handle = '@taylorswift13' 
WHERE id = 4;

SELECT * FROM celebs;

DROP TABLE IF EXISTS awards;

CREATE TABLE IF NOT EXISTS awards (
   id INTEGER PRIMARY KEY,
   recipient TEXT NOT NULL,
   award_name TEXT DEFAULT 'Grammy'
);

