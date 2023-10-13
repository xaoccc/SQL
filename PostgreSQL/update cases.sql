UPDATE table_name
  SET col_name = 
  CASE WHEN col_name = 'value1' THEN 'value2' 
  WHEN col_name = 'value3' THEN 'value4' 
  WHEN col_name = 'value5' THEN 'value6' 
  END;
