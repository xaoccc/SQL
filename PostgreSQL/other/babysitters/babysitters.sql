CREATE TABLE babysitters IF NOT EXIST(
	"id" SERIAL PRIMARY KEY,
	"first_name" VARCHAR(50) NOT NULL,
	"middle_name" VARCHAR(50) NOT NULL,
	"last_name" VARCHAR(50) NOT NULL,
	"age" INTEGER NOT NULL,
	"rating" INTEGER NOT NULL,
	"children" INTEGER NOT NULL,
	"gender" CHAR(6) NOT NULL,
	"phone_number" CHAR(10) NOT NULL,
	"city" VARCHAR(30) NOT NULL,
	"neighbourhood" VARCHAR(30) NOT NULL
);

CREATE TABLE chidren IF NOT EXIST(
	"id" SERIAL PRIMARY KEY,
	"name" VARCHAR(50) NOT NULL,
	"age" INTEGER NOT NULL,
	"parent_id" INTEGER NOT NULL,
	"gender" CHAR(6) NOT NULL,
	"special_needs" TEXT NOT NULL	
);