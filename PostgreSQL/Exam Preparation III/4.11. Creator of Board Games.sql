CREATE OR REPLACE FUNCTION fn_creator_with_board_games(kreator VARCHAR(30)) 
RETURNS INT AS 
$$
  DECLARE res INT;
  BEGIN
    SELECT COUNT(bg.id) FROM board_games AS bg
    JOIN creators_board_games AS cbg ON cbg.board_game_id = bg.id 
    JOIN creators AS c ON cbg.creator_id = c.id 
    WHERE c.first_name = kreator
    INTO res;
    RETURN res;
  END;
$$
LANGUAGE plpgsql;

-- I   I
-- I   I  //
-- -----//
