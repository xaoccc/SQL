  CREATE TABLE search_results (
    id SERIAL PRIMARY KEY,
    address_name VARCHAR(50),
    full_name VARCHAR(100),
    level_of_bill VARCHAR(20),
    make VARCHAR(30),
    condition CHAR(1),
    category_name VARCHAR(50)
);

CREATE OR REPLACE PROCEDURE sp_courses_by_address(
  address_name VARCHAR(100)
) 
AS 
$$
  BEGIN
    INSERT INTO search_results (address_name, full_name, level_of_bill, make, condition, category_name)
    SELECT a.name AS address_name, c.full_name, 
      
      CASE WHEN co.bill <= 20 THEN 'Low'
      WHEN co.bill > 20 AND co.bill <= 30 THEN 'Medium'
      ELSE 'High'
      END
       AS level_of_bill, 
      cars.make, cars.condition, cat.name AS category_name FROM clients AS c
    JOIN courses AS co ON c.id = co.client_id
    JOIN addresses AS a ON a.id = co.from_address_id
    JOIN cars ON co.car_id = cars.id 
    JOIN categories AS cat ON cat.id = cars.category_id
    WHERE a.name = address_name
    ORDER BY cars.make, c.full_name;


  END;
$$
LANGUAGE plpgsql;
