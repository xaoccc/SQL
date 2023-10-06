-- correction 1. - add holder_info RECORD;
-- correction 2. - add OR REPLACE
-- correction 3. - remove variables name and total_balance and statements INTO name,  INTO total_balance
-- correction 4. - add OR REPLACE
-- correction 5. - replace RAISE NOTICE 'TEST' with  RAISE NOTICE '% - %', holder_info.full_name, holder_info.balance_sum;

CREATE OR REPLACE PROCEDURE sp_retrieving_holders_with_balance_higher_than(searched_balance DECIMAL)
AS
$$
DECLARE 
  holder_info RECORD;
BEGIN
  FOR holder_info IN
    SELECT SUM(balance) AS balance_sum , CONCAT(first_name, ' ', last_name) AS full_name FROM accounts AS a 
    JOIN account_holders AS ah ON ah.id = a.account_holder_id
    GROUP BY full_name
    HAVING SUM(balance) > searched_balance 
    
  LOOP
    RAISE NOTICE '% - %', holder_info.full_name, holder_info.balance_sum;
  END LOOP;
  
END; 
$$
LANGUAGE plpgsql;

CALL sp_retrieving_holders_with_balance_higher_than(20000);
