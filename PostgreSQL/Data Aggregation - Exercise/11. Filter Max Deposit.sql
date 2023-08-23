SELECT "magic_wand_creator", MAX("deposit_amount" ) AS "Max Deposit Amount" FROM wizard_deposits
GROUP BY "magic_wand_creator"
ORDER BY "Max Deposit Amount" DESC
LIMIT 3;