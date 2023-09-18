ALTER TABLE "countries" 
ADD COLUMN "capital_code" CHAR(2);
UPDATE "countries" 
SET "capital_code" = SUBSTRING("countries"."capital",0 ,3);
