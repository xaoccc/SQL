SELECT "country_name", COALESCE("river_name", NULL) AS river_name FROM "countries"
LEFT JOIN "countries_rivers" USING(country_code)
LEFT JOIN "rivers" ON "countries_rivers"."river_id" = "rivers"."id"
WHERE continent_code = 'AF'
ORDER BY "country_name"
LIMIT 5;
