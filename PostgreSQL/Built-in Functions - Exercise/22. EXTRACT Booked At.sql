SELECT to_char("booked_at", 'YYYY') AS "YEAR", 
to_char("booked_at", 'FMMM') AS "MONTH" ,
to_char("booked_at", 'FMDD') AS "DAY",
to_char("booked_at" AT TIME ZONE 'UTC', 'FMHH24') AS "HOUR", 
to_char("booked_at", 'FMMI') AS "MINUTE",
CEILING(EXTRACT(SECOND FROM "booked_at" AT TIME ZONE 'UTC')) AS "SECOND"
  FROM "bookings";
