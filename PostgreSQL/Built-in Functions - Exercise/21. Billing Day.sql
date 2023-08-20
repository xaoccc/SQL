ALTER TABLE "bookings"
ADD COLUMN "billing_day" TIMESTAMPTZ default CURRENT_TIMESTAMP;

SELECT to_char("billing_day", 'DD "Day" MM "Month" YYYY "Year" HH24:MI:SS')  AS "Billing Day" FROM "bookings";