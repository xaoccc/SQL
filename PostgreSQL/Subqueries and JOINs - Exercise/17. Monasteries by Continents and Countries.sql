UPDATE "countries" 
  SET country_name = 'Burma'
  WHERE country_name = 'Myanmar' ;
	
INSERT INTO "monasteries" ("monastery_name", "country_code")
VALUES ('Hanga Abbey', 'TZ'),
  ('Myin-Tin-Daik', 'MM')  ;
  
SELECT 
  con.continent_name AS "Continent Name",
  cou.country_name AS "Country Name",
  COUNT(m.monastery_name) AS "Monasteries Count"
  FROM continents AS con
  LEFT JOIN countries AS cou USING (continent_code)
  LEFT JOIN monasteries AS m USING (country_code)
  WHERE "three_rivers" = FALSE OR "three_rivers" IS NULL
  GROUP BY continent_name, country_name
  ORDER BY "Monasteries Count" DESC, "Country Name" ASC;



"country_code" - column should be exactly two characters long. 
... add a new row to the "monasteries" table with 'Hanga Abbey' as the name and 'Tanzania' as the country code ...
