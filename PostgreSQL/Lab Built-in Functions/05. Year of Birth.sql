SELECT first_name, last_name, SELECT EXTRACT(YEAR FROM INTERVAL born) AS "year"  FROM authors;