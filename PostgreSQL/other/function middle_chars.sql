create or replace function middle_chars(string varchar, start_char integer, string_len integer)
returns varchar
AS
$$
BEGIN
	return substring(string, start_char, string_len);
END;	
$$
language plpgsql;

select middle_chars('durumdurumdum', 3, 3);