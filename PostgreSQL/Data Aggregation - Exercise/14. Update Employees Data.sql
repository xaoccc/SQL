UPDATE "employees"
SET "job_title" = CONCAT('Senior ', "job_title"), salary = salary + 2500
WHERE "hire_date" < '2015-01-16';

UPDATE "employees"
SET "job_title" = CONCAT('Mid-', "job_title"), salary = salary + 1500
WHERE "hire_date" < '2020-03-04' AND "hire_date" >= '2015-01-16';

SELECT first_name, job_title, salary FROM employees;