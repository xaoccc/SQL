INSERT INTO clients (full_name, phone_number)
SELECT 
  CONCAT(first_name, ' ', last_name) AS full_name, 
  CONCAT('(088) 9999', (d.id*2)::VARCHAR) AS phone_number 
FROM drivers AS d 
WHERE d.id BETWEEN 10 AND 20;
