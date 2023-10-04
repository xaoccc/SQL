SELECT 
    country_name AS "Country",
    highest_peak_name AS "Highest Peak Name" ,
    highest_peak_elevation AS "Highest Peak Elevation",
    mountain AS "Mountain"
FROM (
    SELECT 
        c.country_name,
        CASE 
          WHEN m.mountain_range IS NOT NULL AND p.peak_name IS NOT NULL AND p.elevation IS NOT NULL THEN p.peak_name 
          ELSE '(no highest peak)'
        END
        AS highest_peak_name,
        CASE 
          WHEN m.mountain_range IS NOT NULL AND p.peak_name IS NOT NULL AND p.elevation IS NOT NULL THEN p.elevation 
          ELSE 0
        END
        AS highest_peak_elevation,
        CASE 
          WHEN m.mountain_range IS NOT NULL AND p.peak_name IS NOT NULL AND p.elevation IS NOT NULL THEN m.mountain_range 
          ELSE '(no mountain)'
        END
        AS mountain,
        DENSE_RANK() OVER (PARTITION BY c.country_name ORDER BY p.elevation DESC) AS rank_within_country
    FROM  countries AS c
    LEFT JOIN mountains_countries AS mC ON  c.country_code = mc.country_code
    LEFT JOIN mountains AS m ON m.id = mc.mountain_id
    LEFT JOIN peaks AS p ON m.id = p.mountain_id
) AS ranked_peaks
WHERE rank_within_country = 1
ORDER BY country_name;



-- SELECT 
--     country_name AS "Country",
--     highest_peak_name AS "Highest Peak Name" ,
--     highest_peak_elevation AS "Highest Peak Elevation",
--     mountain AS "Mountain"
-- FROM (
--     SELECT 
--         c.country_name,
--         COALESCE(p.peak_name, '(no highest peak)')  AS highest_peak_name,
--         COALESCE(p.elevation, 0) AS highest_peak_elevation,
--         COALESCE(m.mountain_range, '(no mountain)') AS mountain,
--         DENSE_RANK() OVER (PARTITION BY c.country_name ORDER BY p.elevation DESC) AS rank_within_country
--     FROM  countries AS c
--     LEFT JOIN mountains_countries AS mC ON  c.country_code = mc.country_code
--     LEFT JOIN mountains AS m ON m.id = mc.mountain_id
--     LEFT JOIN peaks AS p ON m.id = p.mountain_id
-- ) AS ranked_peaks
-- WHERE rank_within_country = 1
-- ORDER BY country_name;


-- SELECT "Country", "Highest Peak Name", "Highest Peak Elevation", "Mountain"
-- FROM (
--     SELECT 
--         c.country_name AS "Country",
--         COALESCE(p.peak_name, '(no highest peak)') AS "Highest Peak Name" ,
--         COALESCE(p.elevation, 0) AS "Highest Peak Elevation",
--         COALESCE(m.mountain_range, '(no mountain)') AS "Mountain",
--         ROW_NUMBER() OVER (PARTITION BY c.country_name ORDER BY p.elevation DESC) AS rank_within_country

--     FROM  countries AS c
--         LEFT JOIN mountains_countries AS mC ON  c.country_code = mC.country_code
--         LEFT JOIN mountains AS m ON m.id = mC.mountain_id
--         LEFT JOIN peaks AS p ON m.id = p.mountain_id

-- ) AS subquery
-- WHERE rank_within_country = 1
-- ORDER BY "Country" ASC, "Highest Peak Elevation" DESC;
