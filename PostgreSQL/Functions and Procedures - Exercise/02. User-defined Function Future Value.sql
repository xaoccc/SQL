CREATE OR REPLACE FUNCTION fn_calculate_future_value(initial_sum INT, yearly_interest_rate NUMERIC, number_of_years INT)
RETURNS NUMERIC AS 
$$
BEGIN
  RETURN TRUNC(initial_sum * ((1 + yearly_interest_rate) ^ number_of_years), 4);
END ;
$$
LANGUAGE plpgsql;
