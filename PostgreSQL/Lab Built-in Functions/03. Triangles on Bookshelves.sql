SELECT "id", ROUND((side * height * 0.5)::numeric, 16) AS area FROM triangles;