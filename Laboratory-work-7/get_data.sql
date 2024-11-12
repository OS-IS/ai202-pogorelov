CREATE OR REPLACE FUNCTION pohorielov.get_data(attribute_value VARCHAR)
RETURNS TABLE (p_id INT, person_name VARCHAR, age INT, spot_conf INT) AS $$
BEGIN
    RETURN QUERY
    SELECT * FROM pohorielov.persons
    WHERE person_name = get_data.attribute_value;
END;
$$ LANGUAGE plpgsql;
