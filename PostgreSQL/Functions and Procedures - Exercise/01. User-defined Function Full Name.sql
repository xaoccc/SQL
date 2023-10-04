CREATE OR REPLACE FUNCTION fn_full_name(first_name VARCHAR, last_name VARCHAR)
RETURNS VARCHAR AS 
$$
BEGIN
  IF 
    first_name IS NULL AND last_name IS NULL THEN
    RETURN NULL;
  ELSIF first_name IS NULL OR last_name IS NULL THEN
    RETURN CONCAT(first_name, ' ', last_name);
  ELSE
    RETURN CONCAT(INITCAP(first_name), ' ', INITCAP(last_name));
  END IF;
END ;
$$
LANGUAGE plpgsql;
