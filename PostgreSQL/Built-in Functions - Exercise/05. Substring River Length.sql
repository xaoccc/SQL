CREATE VIEW "river_length" AS
	SELECT SUBSTRING("River Information" , '([0-9]{1,4})' ) FROM "view_river_info" ;	
SELECT * FROM "river_length";