SELECT bg.name, rating, c.name AS category_name FROM  board_games AS bg 
JOIN categories AS c ON bg.category_id = c.id
JOIN players_ranges AS pr ON pr.id = bg.players_range_id
WHERE rating > 7 AND (rating > 7.50 OR LOWER(bg.name) LIKE '%a%') AND pr.min_players >= 2 AND pr.max_players <= 5
ORDER BY bg.name ASC, bg.rating DESC
LIMIT 5;
