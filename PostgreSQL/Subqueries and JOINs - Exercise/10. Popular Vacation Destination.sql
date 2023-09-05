SELECT "country", COUNT("bookings"."booking_id") AS booking_count FROM "apartments"
JOIN "bookings" USING("apartment_id")
WHERE booked_at > '2021-05-18 07:52:09.904+03' and booked_at < '2021-09-17 19:48:02.147+03'
GROUP BY "apartments"."country"
ORDER BY booking_count DESC;
