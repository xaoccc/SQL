CREATE TABLE IF NOT EXISTS notification_emails (
	id SERIAL PRIMARY KEY,
	recipient_id INT NOT NULL,
	subject	TEXT NOT NULL,
	body TEXT,
	
	CONSTRAINT fk_notification_emails_account_holders
	FOREIGN KEY (recipient_id)
	REFERENCES account_holders(id)

);


CREATE OR REPLACE FUNCTION trigger_fn_send_email_on_balance_change()
RETURNS TRIGGER AS
$$
BEGIN
	INSERT INTO notification_emails(recipient_id, subject, body)
	VALUES (OLD.id, CONCAT('Balance change for account: ', OLD.id), CONCAT('On ', DATE(), ' your balance was changed from ', NEW.old_sum, ' to ', NEW.new_sum, '.'));
	RETURN NEW;

END;
$$
LANGUAGE plpgsql;

CREATE OR REPLACE TRIGGER tr_send_email_on_balance_change
AFTER UPDATE ON logs
FOR EACH ROW
WHEN (OLD.new_sum <> NEW.new_sum)
EXECUTE PROCEDURE trigger_fn_send_email_on_balance_change();
