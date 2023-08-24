SELECT departments.*, employees.*
FROM departments 
FULL JOIN employees ON employees.department_id = departments.id;