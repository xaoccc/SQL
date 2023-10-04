-- In the brackets we write the input parameters, their type and sometines output values also with their values types
CREATE OR REPLACE PROCEDURE sp_increase_salaries(department_name VARCHAR) 
-- Here we define the language
LANGUAGE plpgsql
-- Start with AS $$ BEGIN
AS $$
BEGIN
  -- Here is our CREATE, UPDATE OR DELETE statement
  UPDATE employees AS e
  SET salary = salary * 1.05
  WHERE e.department_id = (
  SELECT department_id FROM departments WHERE name = department_name);

-- END is exactly like this
END;
$$;
