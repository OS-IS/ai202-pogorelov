CREATE OR REPLACE FUNCTION get_data_secure(attribute1 text)
RETURNS TABLE(p_id INTEGER, person_name TEXT, age INTEGER) AS $$
BEGIN
    RETURN QUERY 
    SELECT p_id, person_name, age
    FROM persons
    WHERE person_name = attribute1;
END;
$$ LANGUAGE plpgsql;
