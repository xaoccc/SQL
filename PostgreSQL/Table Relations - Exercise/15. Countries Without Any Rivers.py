CREATE VIEW with_rivers AS
SELECT COUNT("river_id") AS count FROM "countries_rivers"
JOIN "countries" ON "countries"."country_code"="countries_rivers"."country_code"
GROUP BY "countries"."country_code";

SELECT (SELECT COUNT(country_code) AS count from countries) - COUNT(count) AS countries_without_rivers FROM with_rivers;
