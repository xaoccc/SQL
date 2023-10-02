	SELECT 
	  b.booking_id AS "Booking ID", 
	  DATE(b.starts_at) AS "Start Date", 
    b.apartment_id AS "Apartment ID" ,
    CONCAT(c.first_name, ' ', c.last_name) AS "Customer name"
    FROM bookings AS b
    
  RIGHT JOIN customers as c USING (customer_id)
  ORDER BY "Customer name" ASC
  LIMIT 10;
