-- FUNCTION
CREATE OR REPLACE FUNCTION fn_function_name(parameter 1 value_type, parameter 2 value_type, ...)
RETURNS value_type AS 
$$
BEGIN
  RETURN ...;
END ;
$$
LANGUAGE plpgsql;


-- PROCEDURE
CREATE OR REPLACE PROCEDURE fn_function_name(parameter 1 value_type, parameter 2 value_type, ...)
RETURNS value_type AS 
$$
BEGIN

END ;
$$
LANGUAGE plpgsql;
