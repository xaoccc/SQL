SELECT start_point, end_point, leader_id, CONCAT(first_name, ' ', last_name) AS leader_name FROM routes
JOIN campers ON campers.id=routes.leader_id ;