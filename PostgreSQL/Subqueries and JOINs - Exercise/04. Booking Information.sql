SELECT "bookings"."booking_id" AS "Booking ID", "apartments"."name" AS "Apartment Owner",  "apartments"."apartment_id"  AS "Apartment ID", CONCAT("customers"."first_name", ' ', "customers"."last_name") AS "Customer Name" FROM "bookings"
FULL JOIN "apartments" ON "bookings"."booking_id" = "apartments"."booking_id"
FULL JOIN "customers" ON "customers"."customer_id" = "bookings"."customer_id"
ORDER BY "Booking ID", "Apartment Owner", "Customer Name";