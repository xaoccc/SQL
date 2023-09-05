SELECT "apartments"."name", SUM("bookings"."booked_for") FROM "apartments"
JOIN "bookings" USING("apartment_id")
GROUP BY "apartments"."name"
ORDER BY "apartments"."name";
