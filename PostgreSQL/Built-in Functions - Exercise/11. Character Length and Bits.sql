SELECT CONCAT("mountain_range", ' ', p."peak_name") AS "Mountain Information",
    LENGTH(CONCAT("mountain_range", ' ', p."peak_name")) AS "Characters Length",
    BIT_LENGTH(CONCAT("mountain_range", ' ', p."peak_name")) AS "Bits of a String"
    FROM "mountains" AS m
JOIN peaks AS p ON m."id" = p."mountain_id";


