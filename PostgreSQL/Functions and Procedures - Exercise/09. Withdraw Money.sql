CREATE OR REPLACE PROCEDURE sp_withdraw_money(account_id INT, money_amount NUMERIC)
AS
$$
BEGIN
  UPDATE accounts
  SET balance = balance - money_amount
  WHERE accounts.id = account_id AND balance > money_amount;
  COMMIT;   
END;
$$
LANGUAGE plpgsql;
