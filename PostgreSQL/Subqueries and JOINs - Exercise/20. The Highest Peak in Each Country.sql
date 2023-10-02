SELECT c.country_name, SELECT p.peak_name WHERE p.elevation = MAX(p.elevation) AS highest_peak_name, MAX(p.elevation) AS highest_peak_elevation, m.mountain_range FROM peaks as p
JOIN mountains AS m ON m.id = p.mountain_id
JOIN mountains_countries AS mc ON m.id = mc.mountain_id
JOIN countries USING country_code;