CREATE VIEW test AS 
	SELECT * FROM employees
	WHERE salary = (SELECT MAX(salary) FROM employees);
	
SELECT * FROM test;