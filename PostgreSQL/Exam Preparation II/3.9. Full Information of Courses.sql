SELECT a.name, 
CASE WHEN EXTRACT(HOUR FROM co.start) BETWEEN 6 AND 20 THEN 'Day'
  ELSE 'Night'
  END
AS day_time, co.bill, c.full_name, cars.make, cars.model, cat.name FROM clients AS c
JOIN courses AS co ON c.id = co.client_id
JOIN addresses AS a ON a.id = co.from_address_id
JOIN cars ON co.car_id = cars.id
JOIN categories AS cat ON cat.id = cars.category_id
ORDER BY co.id;
