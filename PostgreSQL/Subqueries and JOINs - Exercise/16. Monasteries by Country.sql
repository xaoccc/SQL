CREATE TABLE "monasteries" (
  "id" SERIAL PRIMARY KEY,
  "monastery_name" VARCHAR(255),
  "country_code" CHAR(2)

);

INSERT INTO "monasteries" ("monastery_name", "country_code")
VALUES ('Rila Monastery "St. Ivan of Rila"', 'BG'),
('Bachkovo Monastery "Virgin Mary"', 'BG'),
('Troyan Monastery "Holy Mother''s Assumption"', 'BG'),
('Kopan Monastery', 'NP'),
('Thrangu Tashi Yangtse Monastery', 'NP'),
('Shechen Tennyi Dargyeling Monastery', 'NP'),
('Benchen Monastery', 'NP'),
('Southern Shaolin Monastery', 'CN'),
('Dabei Monastery', 'CN'),
('Wa Sau Toi', 'CN'),
('Lhunshigyia Monastery', 'CN'),
('Rakya Monastery', 'CN'),
('Monasteries of Meteora', 'GR'),
('The Holy Monastery of Stavronikita', 'GR'),
('Taung Kalat Monastery', 'MM'),
('Pa-Auk Forest Monastery', 'MM'),
('Taktsang Palphug Monastery', 'BT'),
('Sümela Monastery', 'TR');

ALTER TABLE "monasteries"
ADD COLUMN "three_rivers" BOOL DEFAULT FALSE;


UPDATE monasteries AS m
SET three_rivers = TRUE
FROM (
    SELECT countries_rivers.country_code
    FROM countries_rivers 
    GROUP BY countries_rivers.country_code
    HAVING COUNT(*) > 3
) AS subquery
WHERE m.country_code = subquery.country_code;

SELECT monastery_name AS "Monastery", country_name AS "Country" FROM "monasteries" 
JOIN countries USING(country_code)
WHERE three_rivers IS NOT TRUE
ORDER BY "monastery_name";
