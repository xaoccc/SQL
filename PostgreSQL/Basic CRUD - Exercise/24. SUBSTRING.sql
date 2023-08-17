CREATE VIEW "view_initials" AS
	SELECT "first_name", "last_name" FROM "employees"
	ORDER BY last_name;
	
UPDATE "view_initials"
	SET "first_name" = LEFT("first_name", 2);
	
ALTER VIEW "view_initials"
	RENAME COLUMN "first_name" TO "initial";
	




	