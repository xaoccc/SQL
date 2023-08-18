/* We can use view */

CREATE VIEW "triangle_area" AS
	SELECT "id", ROUND((side * height * 0.5)::numeric, 16) AS area FROM triangles;
	
SELECT * FROM "triangle_area"
ORDER BY "id";

/* or we can use funcion */

create or replace function area(side numeric, height numeric)
returns numeric(5, 5)
AS
$$
BEGIN
	return side * height * 0.5;
END;	
$$
language plpgsql;

select "id", ROUND(area(side, height)::numeric, 16) FROM triangles
ORDER BY "id";