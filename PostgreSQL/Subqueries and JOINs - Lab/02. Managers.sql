SELECT e.employee_id, CONCAT(first_name, ' ', last_name) AS full_name, d.department_id, name FROM  departments AS d
JOIN employees AS e ON d.manager_id = e.employee_id
ORDER BY e.employee_id
LIMIT 5;