SELECT "name" AS "Name", "country" AS "Country", DATE("bookings"."booked_at") AS "Bookd at" from "apartments"
LEFT JOIN "bookings" ON "bookings"."booking_id" = "apartments"."booking_id"
LIMIT 10;
