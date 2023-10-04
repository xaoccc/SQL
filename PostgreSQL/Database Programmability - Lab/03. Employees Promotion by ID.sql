CREATE OR REPLACE PROCEDURE sp_increase_salary_by_id(e_id INT) 
AS
$$
  BEGIN
    UPDATE employees
    SET salary = salary * 1.05
      WHERE employee_id = (
      SELECT employee_id 
      FROM employees AS e 
      JOIN departments AS d USING (department_id)
      WHERE employee_id = e_id);
  END
$$
LANGUAGE plpgsql;

-- With if-elif statement
-- CREATE OR REPLACE PROCEDURE sp_increase_salary_by_id(e_id INT) 
-- AS
-- $$
--   BEGIN
    
--     IF (SELECT salary FROM employees WHERE employee_id = e_id) IS NULL THEN
--       RETURN;
      
--     ELSE
--       UPDATE employees
--       SET salary = salary * 1.05
--         WHERE employee_id = (
--         SELECT employee_id 
--         FROM employees AS e 
--         JOIN departments AS d USING (department_id)
--         WHERE employee_id = e_id);
--     END IF;
--     COMMIT;
--   END
-- $$
-- LANGUAGE plpgsql;
