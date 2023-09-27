CREATE TABLE "bookings_calculation" AS
	SELECT booked_for, (booked_for * 50)::NUMERIC AS "multiplication", (booked_for % 50)::NUMERIC AS "modulo" FROM  "bookings"
	WHERE "apartment_id" = 93;


