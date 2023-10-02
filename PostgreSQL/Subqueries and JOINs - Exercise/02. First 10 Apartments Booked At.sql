SELECT a.name AS "Name", a.country AS "Country", DATE(b.booked_at) AS "Booked at" FROM apartments AS a 
LEFT JOIN bookings AS b USING (booking_id)
LIMIT 10;
