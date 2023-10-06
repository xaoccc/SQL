CREATE TABLE IF NOT EXISTS logs (
 id SERIAL PRIMARY KEY, 
 account_id INT, 
 old_sum NUMERIC, 
 new_sum NUMERIC);

 CREATE FUNCTION trigger_fn_insert_new_entry_into_logs()
 RETURNS TRIGGER AS 
 $$
 BEGIN

  RETURN NEW;

 END;
 $$
LANGUAGE plpgsql;

 CREATE TRIGGER tr_account_balance_change
 AFTER UPDATE OF balance ON accounts
 FOR EACH ROW
 WHEN (NEW.balance <> OLD.balance)
 EXECUTE PROCEDURE trigger_fn_insert_new_entry_into_logs();
