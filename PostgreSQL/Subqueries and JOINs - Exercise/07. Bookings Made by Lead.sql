SELECT "bookings"."apartment_id", "bookings"."booked_for", "customers"."first_name", "customers"."country" FROM "bookings"
LEFT JOIN "customers" USING(customer_id)
WHERE "job_type" LIKE '%Lead%';
