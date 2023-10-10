CREATE OR REPLACE FUNCTION fn_courses_by_client(phone_num VARCHAR(20)) 
RETURNS INT AS 
$$
  DECLARE res INT;
  BEGIN
    SELECT COUNT(co.id) FROM courses AS co
    JOIN clients AS c ON co.client_id = c.id
    WHERE c.phone_number = phone_num
    INTO res;
    RETURN res;

  END;
$$
LANGUAGE plpgsql;
