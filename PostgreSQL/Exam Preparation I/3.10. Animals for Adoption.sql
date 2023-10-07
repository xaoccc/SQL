SELECT 
	a.name,
	TO_CHAR(birthdate, 'YYYY') AS birth_year,
	animal_type
	
FROM 
	animals AS a
LEFT JOIN owners AS o ON a.owner_id=o.id
JOIN animal_types AS at ON a.animal_type_id=at.id
WHERE o.id IS NULL AND animal_type <> 'Birds' AND AGE('01-01-2022', birthdate) < 5 years;