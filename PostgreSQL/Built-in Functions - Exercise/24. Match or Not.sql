SELECT "companion_full_name", "email" from "users"
	WHERE LOWER("companion_full_name") LIKE '%and%' AND "email" NOT LIKE '%@gmail' ;
