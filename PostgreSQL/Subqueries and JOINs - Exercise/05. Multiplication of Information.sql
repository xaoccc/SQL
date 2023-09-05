SELECT "bookings"."booking_id" AS "Booking ID", "customers"."first_name" AS "Customer Name" FROM "bookings"
CROSS JOIN "customers"
ORDER BY "Customer Name";
