CREATE OR REPLACE FUNCTION get_data(attribute_value VARCHAR)
RETURNS TABLE (p_id INTEGER, person_name VARCHAR, age INTEGER, spot_conf INTEGER) AS $$
BEGIN
    RETURN QUERY EXECUTE 
    'SELECT p_id, person_name, age, spot_conf FROM persons WHERE person_name = $1'
    USING attribute_value;
END;
$$ LANGUAGE plpgsql;
