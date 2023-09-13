CREATE VIEW "translate" AS 
	SELECT "capital", TRANSLATE("capital", 'áãåçéíñóú' , 'aaaceinou' ) AS translated_name FROM "countries";	
SELECT * FROM "translate";
