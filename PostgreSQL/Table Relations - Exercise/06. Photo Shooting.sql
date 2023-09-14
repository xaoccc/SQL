DROP TABLE "customers" CASCADE;
DROP TABLE "photos" CASCADE;

CREATE TABLE "customers" (
	"id" SERIAL PRIMARY KEY,
	"name" VARCHAR,
	"date" DATE
);

INSERT INTO "customers" ("name", "date")
VALUES ('Bella', '2022-03-25'),
	('Philip', '2022-07-05');	

CREATE TABLE "photos" (
	"id" SERIAL PRIMARY KEY,
	"URL" VARCHAR,
	"place" VARCHAR,
	"customer_id" INT NOT NULL,
	CONSTRAINT fk_photos_customers
	FOREIGN KEY (customer_id)
	REFERENCES customers(id)
);

INSERT INTO "photos" ("URL", "place", "customer_id")
VALUES('bella_1111.com', 'National Theatre', 1),
	('bella_1112.com', 'Largo', 1),
	('bella_1113.com', 'The View Restaurant', 1),
	('philip_1121.com', 'Old Town', 2),
	('philip_1122.com', 'Rowing Canal', 2),
	('philip_1123.com', 'Roman Theater', 2);
