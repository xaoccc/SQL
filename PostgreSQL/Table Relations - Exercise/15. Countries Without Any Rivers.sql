DROP VIEW IF EXISTS with_rivers ;
CREATE VIEW with_rivers AS
SELECT COUNT("river_id") AS count FROM "countries_rivers"
RIGHT JOIN "countries" ON "countries"."country_code"="countries_rivers"."country_code"
GROUP BY "countries"."country_code";

SELECT COUNT(count) FROM with_rivers
WHERE count = 0;
