SELECT 
    country_name AS "Country",
    highest_peak_name AS "Highest Peak Name" ,
    highest_peak_elevation AS "Highest Peak Elevation",
    mountain AS "Mountain"
FROM (
    SELECT 
        c.country_name,
        COALESCE(p.peak_name, '(no highest peak)')  AS highest_peak_name,
        COALESCE(p.elevation, 0) AS highest_peak_elevation,
        COALESCE(m.mountain_range, '(no mountain)') AS mountain,
        DENSE_RANK() OVER (PARTITION BY c.country_name ORDER BY p.elevation DESC) AS rank_within_country
    FROM  countries AS c
    LEFT JOIN mountains_countries AS mC ON  c.country_code = mc.country_code
    LEFT JOIN mountains AS m ON m.id = mc.mountain_id
    LEFT JOIN peaks AS p ON m.id = p.mountain_id
) AS ranked_peaks
WHERE rank_within_country = 1
ORDER BY country_name;
