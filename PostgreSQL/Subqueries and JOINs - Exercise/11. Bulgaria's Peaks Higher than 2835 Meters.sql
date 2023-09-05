SELECT "mountains_countries"."country_code", "mountain_range", "peaks"."peak_name", "peaks"."elevation" FROM "mountains"
JOIN "mountains_countries" ON "mountains_countries"."mountain_id" = "mountains"."id"
JOIN "peaks" USING("mountain_id")
WHERE "peaks"."elevation" > 2835 AND "country_code"='BG'
ORDER BY "peaks"."elevation" DESC;
