SELECT 
  a.country, COUNT(b.booking_id) as booking_count FROM bookings AS b
  JOIN apartments AS a USING (apartment_id)
  WHERE b.booked_at > '2021-05-18 07:52:09.904+03' AND b.booked_at < '2021-09-17 19:48:02.147+03'
  GROUP BY a.country
  ORDER BY booking_count DESC;

Тук отново тряба да налучкваме. Първо не се знае country от коя таблица се взима - apartments или customers. След това отново не е ясно по какво джойнваме. Общо комбинациите са 8. 4 за apartments и 4 за customers.

  	counting the number of bookings "booking_id" made for each "country" - made BY customer or made FOR apartment???
