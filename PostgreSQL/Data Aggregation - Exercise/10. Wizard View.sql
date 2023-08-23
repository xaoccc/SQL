CREATE OR REPLACE VIEW "view_wizzard_deposits_with_expiration_date_before_1983_08_17" AS 
SELECT CONCAT("first_name", ' ', "last_name") AS "Wizard Name", "deposit_start_date" AS "Start Date", "deposit_expiration_date" AS "Expiration Date", "deposit_amount"  AS "Amount" FROM "wizard_deposits";

SELECT * FROM "view_wizzard_deposits_with_expiration_date_before_1983_08_17"
WHERE "Expiration Date" <= '1983-08-17'
GROUP BY "Wizard Name", "Start Date", "Expiration Date", "Amount"
ORDER BY "Expiration Date" ASC;