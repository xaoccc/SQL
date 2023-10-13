SELECT id,
       SUM(CASE WHEN 'Jan' = ANY(months) THEN revenue ELSE NULL END) AS "Jan_Revenue",
       SUM(CASE WHEN 'Feb' = ANY(months) THEN revenue ELSE NULL END) AS "Feb_Revenue",
       SUM(CASE WHEN 'Mar' = ANY(months) THEN revenue ELSE NULL END) AS "Mar_Revenue",
       SUM(CASE WHEN 'Apr' = ANY(months) THEN revenue ELSE NULL END) AS "Apr_Revenue",
       SUM(CASE WHEN 'May' = ANY(months) THEN revenue ELSE NULL END) AS "May_Revenue",
       SUM(CASE WHEN 'Jun' = ANY(months) THEN revenue ELSE NULL END) AS "Jun_Revenue",
       SUM(CASE WHEN 'Jul' = ANY(months) THEN revenue ELSE NULL END) AS "Jul_Revenue",
       SUM(CASE WHEN 'Aug' = ANY(months) THEN revenue ELSE NULL END) AS "Aug_Revenue",
       SUM(CASE WHEN 'Sep' = ANY(months) THEN revenue ELSE NULL END) AS "Sep_Revenue",
       SUM(CASE WHEN 'Oct' = ANY(months) THEN revenue ELSE NULL END) AS "Oct_Revenue",
       SUM(CASE WHEN 'Nov' = ANY(months) THEN revenue ELSE NULL END) AS "Nov_Revenue",
       SUM(CASE WHEN 'Dec' = ANY(months) THEN revenue ELSE NULL END) AS "Dec_Revenue"
FROM (
  SELECT id, 
         array_agg(month) AS months,
         revenue
  FROM Department
  GROUP BY id, revenue
) AS MonthlyData
GROUP BY id
ORDER BY id;
