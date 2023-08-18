SELECT title, ROUND("cost"::numeric, 3) AS modified_price FROM books
ORDER BY "id";