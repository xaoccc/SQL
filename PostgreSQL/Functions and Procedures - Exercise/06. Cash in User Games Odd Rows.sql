CREATE OR REPLACE FUNCTION fn_cash_in_users_games(game_name VARCHAR(50))
RETURNS NUMERIC AS 
$$
DECLARE total_cash NUMERIC;
BEGIN 
  -- select the total sum of cash
  SELECT SUM(cash) INTO total_cash 
  FROM 
  -- here we create a filter, rows counter from 2 tables join, bcs cash is from users_games table and name is from games table
  (SELECT ROW_NUMBER() OVER (ORDER BY cash DESC) AS row_number, cash FROM users_games AS ug
    JOIN games AS g ON g.id = ug.game_id
    WHERE g.name = game_name
  -- we order by cash
    ORDER BY cash DESC)  
    AS foo
  -- and find the odd rows
  WHERE row_number % 2 = 1;
  -- we round the result, put in in the vaiable total_cash and return it
  return ROUND(total_cash, 2);
END;
$$
LANGUAGE plpgsql;

-- test -> 6921.00
-- SELECT *  FROM fn_cash_in_users_games('Delphinium Pacific Giant');
