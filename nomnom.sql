/* nomnom.sql */

DROP TABLE IF EXISTS nomnom;

CREATE TABLE IF NOT EXISTS nomnom (
    id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    neighborhood TEXT NOT NULL,
    cuisine	TEXT NOT NULL,
    review INTEGER NOT NULL,
    price TEXT NOT NULL,
    health TEXT NOT NULL
);

INSERT INTO nomnom (name, neighborhood, cuisine, review, price, health) VALUES
("Peter Luger Steak House",	"Brooklyn", "Steak", 4.4, "$$$$", "A"),
("Jongro BBQ", "Midtown", "Korean",	4.5, "$$", "A"),
("Nom Wah Tea Parlor", "Chinatown",	"Chinese", 4.2,	"$", "A"),
("Massawa",	"Uptown", "Ethiopian", 4, "$$", "N/A"),
("Nan Xiang Xiao Long Bao",	"Queens", "Chinese", 4.2, "$", "A"),
("Mission Chinese Food", "Downtown", "Chinese", 3.9, "$$", "A"),
("Marea", "Midtown", "Italian", 4.5, "$$$$", "A"),
("The Meatball Shop", "Downtown", "American", 4.2, "$",	"A");

SELECT *
FROM nomnom;

SELECT DISTINCT neighborhood FROM nomnom;

SELECT DISTINCT cuisine FROM nomnom;

SELECT * FROM nomnom WHERE cuisine = "Chinese";

SELECT * FROM nomnom WHERE review >= 4;

SELECT * FROM nomnom WHERE cuisine = "Italian" AND price = "$$$";

SELECT * FROM nomnom WHERE name LIKE "%meatball%";

SELECT * FROM nomnom WHERE neighborhood = "Midtown" OR neighborhood = "Downtown" OR neighborhood = "Chinatown";

SELECT * FROM nomnom WHERE health IS NULL;

SELECT * FROM nomnom ORDER BY review DESC LIMIT 10;

SELECT name,
 CASE
  WHEN review > 4.5 THEN
"Extraordinary"
  WHEN review > 4 THEN
"Excellent"
WHEN review > 3 THEN
"Good"
WHEN review > 2 THEN
"Fair"
  ELSE "Poor"
END AS "ThumbsUp"
FROM nomnom;