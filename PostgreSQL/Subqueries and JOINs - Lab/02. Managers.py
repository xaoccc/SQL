SELECT employees.employee_id, CONCAT(first_name, ' ', last_name) AS full_name, departments.department_id, name FROM  departments
JOIN employees ON departments.department_id = employees.department_id
ORDER BY employees.employee_id
LIMIT 5;
