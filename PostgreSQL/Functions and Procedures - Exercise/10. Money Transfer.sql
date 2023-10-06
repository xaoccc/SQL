CREATE OR REPLACE PROCEDURE sp_transfer_money(sender_id INT, receiver_id INT, money_amount NUMERIC)
AS
$$

BEGIN
  CALL sp_withdraw_money(sender_id, money_amount);
  CALL sp_deposit_money(receiver_id, money_amount);
  COMMIT;   
END;

$$
LANGUAGE plpgsql;
