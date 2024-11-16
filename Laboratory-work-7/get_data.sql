CREATE OR REPLACE FUNCTION get_data(attribute_value VARCHAR)
RETURNS TABLE
(p_id INTEGER, persom_name VARCHAR, age INTEGER)
AS $$
DECLARE
	str VARCHAR;
BEGIN
	str := 'SELECT p_id, person_name, age from persons where person_name = ''' || 
		attribute_value || '''';
	RAISE NOTICE 'Query=%',str;
	RETURN QUERY EXECUTE str;
END;
$$ LANGUAGE plpgsql;
