SELECT CONCAT(first_name, ' ', last_name) AS full_name, email, MAX(rating) FROM  creators AS cr
JOIN creators_board_games AS cbg ON cr.id = cbg.creator_id
JOIN board_games AS bg ON bg.id = cbg.board_game_id
WHERE email LIKE '%.com'
GROUP BY CONCAT(first_name, ' ', last_name), email
ORDER BY full_name ASC;
