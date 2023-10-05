CREATE OR REPLACE FUNCTION fn_is_game_over(is_game_over BOOLEAN)
RETURNS TABLE(name VARCHAR, game_type_id INT, is_finished BOOL) AS 
$$
DECLARE result INT;
BEGIN 
  FOR name, game_type_id, is_finished IN SELECT g.name, g.game_type_id, g.is_finished FROM games AS g 
    WHERE g.is_finished = is_game_over
    LOOP
    RETURN NEXT;
  END LOOP;
  RETURN;
END;
$$
LANGUAGE plpgsql;
