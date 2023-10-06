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
CREATE OR REPLACE PROCEDURE sp_procedure_name(parameter 1 value_type, parameter 2 value_type, ...)
AS 
$$
BEGIN
  RETURN OLD(when delete)/NEW(when create/update)
END ;
$$
LANGUAGE plpgsql;


-- TRIGGER
 CREATE OR REPLACE TRIGGER tr_trigger_name
 AFTER CREATE/UPDATE/DELETE OF column_name ON table_name
 FOR EACH ROW/
 EXECUTE PROCEDURE sp_procedure_name(parameter 1 value_type, parameter 2 value_type, ...);
