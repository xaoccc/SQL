SELECT 
	o.name AS owner,
	COUNT(a.name) AS count_of_animals
FROM owners AS o
JOIN animals AS a ON o.id = a.owner_id
GROUP BY o.name;