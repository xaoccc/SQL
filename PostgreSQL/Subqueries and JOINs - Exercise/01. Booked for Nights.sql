SELECT 
  CONCAT(a.address, ' ', a.address_2) AS "Apartment Address", 
  b.booked_for AS "Nights" 
  FROM bookings AS b
  JOIN apartments AS a USING (booking_id)
  ORDER BY a.apartment_id	ASC;

Как знаем да join-ваме по booking_id, a не по apartment_id?
Имаме общо 4 варианта за join: 1. а.apartment_id = b.booking_id, 2. а.booking_id = b.apartment_id, 3. USING (booking_id), 4. USING (apartment_id). Какво става, ако бяха 6 или 8? Да тестваме всяка комбинация ли?
