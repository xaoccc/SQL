SELECT cr.last_name, CEIL(AVG(bg.rating)) AS average_rating, p.name AS publisher_name FROM publishers AS p

JOIN board_games AS bg ON p.id = bg.publisher_id
JOIN creators_board_games AS cbg ON bg.id = cbg.board_game_id
JOIN creators AS cr ON cr.id = cbg.creator_id
WHERE p.name = 'Stonemaier Games'
GROUP BY cr.last_name, p.name
ORDER BY average_rating DESC;
