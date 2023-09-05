SELECT "bookings"."booking_id", "bookings"."apartment_id", "customers"."companion_full_name" FROM "bookings"
JOIN "customers" USING(customer_id)
WHERE "bookings"."apartment_id" IS NULL;
