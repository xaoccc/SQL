CREATE VIEW "replace" AS
	SELECT REPLACE("mountain_range", 'a', '@') AS "replace_a", REPLACE("mountain_range", 'A', '$') AS "replace_A" 	FROM "mountains"; 	
SELECT * FROM "replace";
	