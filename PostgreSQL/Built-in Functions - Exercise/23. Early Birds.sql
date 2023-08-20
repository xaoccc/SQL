SELECT "user_id", age("starts_at", "booked_at") AS "Early Birds" FROM "bookings"
WHERE AGE("starts_at", "booked_at") > interval '10 months';
