CREATE OR REPLACE FUNCTION fn_difficulty_level(level INT)
RETURNS VARCHAR AS 
$$
BEGIN 
    IF level < 41 THEN
      RETURN 'Normal Difficulty';
    ELSIF level < 61 THEN
      RETURN 'Nightmare Difficulty';
    else
      RETURN 'Hell Difficulty';
    END IF;

END;
$$
LANGUAGE plpgsql;

SELECT ug.user_id, ug.level, ug.cash, fn_difficulty_level(ug.level) AS difficulty_level
    FROM users_games AS ug 
    ORDER BY user_id;
