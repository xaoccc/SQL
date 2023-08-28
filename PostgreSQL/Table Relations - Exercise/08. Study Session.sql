drop table "students" CASCADE;
drop table "exams" CASCADE;
drop table "study_halls" CASCADE;
drop table "students_exams" CASCADE;


CREATE TABLE IF NOT EXISTS "students" (
	"id" SERIAL PRIMARY KEY,
	"student_name" VARCHAR(50)
);

INSERT INTO "students" ("student_name")
VALUES ('Mila'),
	('Toni'),
	('Ron');
	
CREATE TABLE "exams" (
	"id" INT GENERATED ALWAYS AS IDENTITY(START WITH 101 INCREMENT BY 1) PRIMARY KEY,
	"exam_name" VARCHAR(50)
);

INSERT INTO "exams" ("exam_name")
VALUES ('Python Advanced'),
	('Python OOP'),
	('PostgreSQL');

CREATE TABLE IF NOT EXISTS "study_halls" (
	"id" SERIAL PRIMARY KEY,
	"study_hall_name" VARCHAR(50),
	"exam_id" INT,
	CONSTRAINT fk_exam_id
	FOREIGN KEY (exam_id)
	REFERENCES exams(id)
);

INSERT INTO "study_halls" ("study_hall_name", "exam_id")
VALUES ('Open Source', 102),
	('Inspiration', 101),
	('Creative', 103),
	('Masterclass Hall', 103),
	('Information Security', 103);

CREATE TABLE IF NOT EXISTS "students_exams" (
	"student_id" INT,
	CONSTRAINT fk_student_id
	FOREIGN KEY (student_id)
	REFERENCES students(id),
	"exam_id" INT,
	CONSTRAINT fk_exam_id
	FOREIGN KEY (exam_id)
	REFERENCES exams(id)
);

INSERT INTO "students_exams" ("student_id", "exam_id")
VALUES (1, 101),
	(1, 102),
	(2, 101),
	(3, 103),
	(2, 102),
	(2, 103);