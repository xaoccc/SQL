SELECT 
  cars.id, 
  cars.make, 
  cars.mileage, 
  COALESCE(COUNT(c.id), 0) AS count_of_courses, 
  CASE WHEN COUNT(c.id) = 0 THEN NULL 
    ELSE ROUND(AVG(c.bill), 2) 
    END 
    AS average_bill 
FROM cars
LEFT JOIN courses AS c ON cars.id = c.car_id
GROUP BY cars.id, make, mileage
HAVING COUNT(cars.id) <> 2
ORDER BY count_of_courses DESC, cars.id;
