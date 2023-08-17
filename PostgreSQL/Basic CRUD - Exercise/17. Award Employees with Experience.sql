UPDATE employees
SET "job_title" = CONCAT('Senior ', "job_title"), "salary" = "salary" + 1500
WHERE hire_date > '1998-01-01 00:00:00' AND  hire_date < '2000-01-06 00:00:00';

