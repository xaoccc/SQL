ALTER TABLE board_games
DROP CONSTRAINT fk_board_games_publishers;

DELETE FROM addresses CASCADE
WHERE SUBSTRING(town, 1, 1) = 'L' ;