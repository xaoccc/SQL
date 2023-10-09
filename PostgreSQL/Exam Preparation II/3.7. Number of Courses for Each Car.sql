SELECT 
  car_id, 
  make, 
  mileage, 
  COALESCE(COUNT(c.id), 0) AS count_of_courses, 
  CASE WHEN COUNT(c.id) = 0 THEN NULL 
    ELSE ROUND(AVG(c.bill), 2) 
    END 
    AS average_bill 
FROM cars
LEFT JOIN courses AS c ON cars.id = c.car_id
GROUP BY car_id, make, mileage
HAVING COALESCE(COUNT(c.id), 0) <> 2
ORDER BY count_of_courses DESC, c.car_id;

-- защо не се появяват id-тата на колите???
