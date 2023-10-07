SELECT 
	name AS volunteers, 
	phone_number, 
	SUBSTRING(TRIM(REPLACE(address, 'Sofia', '')), 3)
FROM volunteers AS v
JOIN volunteers_departments AS vd on vd.id=v.department_id
WHERE address LIKE '%Sofia%' AND department_name='Education program assistant'
ORDER BY v.name ASC;