CREATE VIEW "substring" AS
	SELECT SUBSTRING("description", 5, 100 ) FROM "currencies";	
SELECT * FROM "substring";