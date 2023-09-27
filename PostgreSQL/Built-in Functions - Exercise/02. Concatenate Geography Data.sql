CREATE VIEW "view_continents_countries_currencies_details" AS
	SELECT CONCAT(c.continent_name, ': ', c.continent_code ) AS "Continent Details", 
	CONCAT_WS(' - ', co.country_name, co.capital, co.area_in_sq_km, 'km2')  AS "Country Information",
	CONCAT(cu.description, ' (', cu.currency_code, ')' ) AS "Currencies"
	FROM continents AS c
	JOIN countries AS co ON  c.continent_code = co.continent_code
	JOIN currencies AS cu ON cu.currency_code = co.currency_code
	ORDER BY "Country Information" ASC, "Currencies" ASC;
