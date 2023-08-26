SELECT vehicles.driver_id, vehicle_type, CONCAT(campers.first_name, ' ', campers.last_name) AS driver_name
FROM vehicles
JOIN campers ON vehicles.driver_id = campers.id;