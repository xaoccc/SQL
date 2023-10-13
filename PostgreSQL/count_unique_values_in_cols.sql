-- for each pair col1 - col2, we count the unique values of col3 and then the unique values of col4
SELECT col1, col2, COUNT(DISTINCT(col3)), COUNT(DISTINCT(col4)) FROM table_name 
GROUP BY col1, col2;
