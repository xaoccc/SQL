UPDATE books SET title = REPLACE(title, 'The', '***') ; 
SELECT title FROM books
WHERE title LIKE '***%'
ORDER BY "id";
