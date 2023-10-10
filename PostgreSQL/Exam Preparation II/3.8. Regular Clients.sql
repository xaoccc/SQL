SELECT full_name, COUNT(car_id) AS count_of_cars, SUM(bill) AS total_sum FROM clients AS c
JOIN courses AS co ON c.id = co.client_id
WHERE SUBSTRING(full_name, 2, 1) = 'a'
GROUP BY full_name
HAVING COUNT(car_id) > 1
ORDER BY full_name;
