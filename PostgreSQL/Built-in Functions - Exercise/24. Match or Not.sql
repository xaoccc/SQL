SELECT "companion_full_name", "email" from "users"
	WHERE "companion_full_name" ILIKE '%and%' AND "email" NOT LIKE '%@gmail' ;
