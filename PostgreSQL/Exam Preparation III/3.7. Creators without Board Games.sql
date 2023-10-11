SELECT cr.id, CONCAT(cr.first_name, ' ', cr.last_name) AS creator_name, cr.email FROM creators AS cr
LEFT JOIN creators_board_games AS cbg ON cr.id = cbg.creator_id
LEFT JOIN board_games AS bg ON bg.id = cbg.board_game_id
WHERE bg.id IS NULL;
