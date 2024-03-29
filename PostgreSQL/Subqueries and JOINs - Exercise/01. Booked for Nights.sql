SELECT 
  CONCAT(a.address, ' ', a.address_2) AS "Apartment Address", 
  b.booked_for AS "Nights" 
  FROM bookings AS b
  JOIN apartments AS a USING (booking_id)
  ORDER BY a.apartment_id	ASC;

