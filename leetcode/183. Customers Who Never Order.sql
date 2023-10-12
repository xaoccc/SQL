SELECT name AS Customers  FROM Customers AS c 
LEFT JOIN Orders AS o ON o.customerId = c.id
WHERE customerid IS NULL;
