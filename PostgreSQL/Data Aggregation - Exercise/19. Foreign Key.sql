CREATE TABLE IF NOT EXISTS "employees_projects" 
("id" SERIAL PRIMARY KEY, 
 "employee_id" INTEGER, 
 "project_id" INTEGER,
 CONSTRAINT fk_employee
 FOREIGN KEY (employee_id)
 REFERENCES employees(id),
 CONSTRAINT fk_project 
 FOREIGN KEY (project_id)
 REFERENCES projects(id)
);

