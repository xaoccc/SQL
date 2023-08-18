SELECT title FROM books
WHERE SUBSTRING(title, 0, 4) = 'The'
ORDER BY "id";