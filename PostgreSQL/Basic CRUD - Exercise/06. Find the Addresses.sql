Select "id", CONCAT("number", ' ', "street") AS "Address", "city_id" from "addresses" 
WHERE "id" >= 20;