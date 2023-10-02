SELECT mc.country_code, m.mountain_range, p.peak_name, p.elevation FROM mountains AS m
JOIN mountains_countries AS mc ON mc.mountain_id = m.id
JOIN peaks AS p USING (mountain_id) 
WHERE country_code = 'BG' AND p.elevation > 2835
ORDER BY elevation DESC;
