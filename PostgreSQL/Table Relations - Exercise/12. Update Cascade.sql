ALTER TABLE "countries_rivers"
ADD CONSTRAINT fk_countries_rivers_rivers
FOREIGN KEY (river_id)
REFERENCES rivers(id) ON DELETE CASCADE;

ALTER TABLE "countries_rivers"
ADD CONSTRAINT fk_countries_rivers_countries
FOREIGN KEY (country_code)
REFERENCES countries(country_code) ON DELETE CASCADE;