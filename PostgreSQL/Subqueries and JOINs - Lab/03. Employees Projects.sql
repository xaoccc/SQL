SELECT employees.employee_id, CONCAT(first_name, ' ', last_name) AS full_name, employees_projects.project_id, projects.name AS project_name FROM  employees
JOIN employees_projects ON employees.employee_id = employees_projects.employee_id
JOIN projects ON employees_projects.project_id = projects.project_id
WHERE projects.project_id = 1;
