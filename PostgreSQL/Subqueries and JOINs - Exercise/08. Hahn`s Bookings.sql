SELECT COUNT("last_name") FROM "customers"
WHERE "last_name"='Hahn';

SELECT 
  COUNT(b.customer_id) FROM bookings AS b
  JOIN customers AS c USING (customer_id)
  WHERE c.last_name LIKE '%Hahn%';
