-- 1. Do the desired select and make sure it works
-- 2. Insert the select into a function
-- 3. Check what parameters should it accept and the type of each parameter
-- 4. If you put the result in a variable:
-- 4a. make sure you declare it
-- 4b. write its type 
-- 4c. return it in the end of the function
-- 5. Check the syntax:
-- 5a. RETURNS output_data_type AS
-- 5b. $$ after AS and $$ before LANGUAGE
-- 5c. BEGIN and END. Between them is the statement, the core of the function
-- 5d. Do not forget to define the language. Here we use Procedure Language PostGreSQL, so we write LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION fn_count_employees_by_town(town_name VARCHAR(20))
RETURNS INT AS
$$
  DECLARE people_count INT;
  BEGIN
    SELECT COUNT(e.employee_id) INTO people_count 
    FROM  employees AS e
    JOIN addresses AS a USING (address_id)
    JOIN towns AS t USING (town_id)
    WHERE t.name = town_name;
    RETURN people_count;
  END;
$$
LANGUAGE plpgsql;

-- Another solution (without using people_count):
-- CREATE FUNCTION fn_count_employees_by_town(town_name VARCHAR(20))
-- RETURNS INT AS
-- $$   
--   BEGIN
--     RETURN (
--     SELECT COUNT(e.employee_id) 
--     FROM  employees AS e
--     JOIN addresses AS a USING (address_id)
--     JOIN towns AS t USING (town_id)
--     WHERE t.name = town_name);
--   END;
-- $$
-- LANGUAGE plpgsql;
