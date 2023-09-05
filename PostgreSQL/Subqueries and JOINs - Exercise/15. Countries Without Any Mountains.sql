SELECT 
       (SELECT COUNT(*) FROM "countries"
        LEFT JOIN "mountains_countries" USING(country_code)
        WHERE "mountain_id" IS NULL) AS "countries_without_mountains"
FROM "countries"
LIMIT 1;
