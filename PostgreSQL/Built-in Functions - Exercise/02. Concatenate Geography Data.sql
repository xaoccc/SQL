CREATE VIEW "view_continents_countries_currencies_details" AS
	SELECT CONCAT(c.continent_name, ': ', c.continent_code ) AS "Continent Details", 
	CONCAT_WS(' - ', "countries"."country_name", "countries"."capital", "countries"."area_in_sq_km", 'km2')  AS "Country Information",
	CONCAT("currencies"."description", ' (', "currencies"."currency_code", ')' ) AS "Currencies"
	FROM continents AS c
	JOIN countries ON  c.continent_code = countries.continent_code
	JOIN currencies ON currencies.currency_code = countries.currency_code
	ORDER BY "Country Information" ASC, "Currencies" ASC;
