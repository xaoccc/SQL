SELECT SUBSTRING("first_name", 0, 3) AS "initials", COUNT('initials') AS "user_count"
FROM "users"
GROUP BY "initials"
ORDER BY "user_count" DESC, "initials";
