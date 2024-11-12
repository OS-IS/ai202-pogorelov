CREATE OR REPLACE FUNCTION change_data(attribute1 TEXT, attribute2 TEXT)
RETURNS INTEGER AS $$
DECLARE
    updated_count INTEGER;
BEGIN
    UPDATE persons
    SET person_name = attribute2
    WHERE p_id = attribute1::INTEGER
    RETURNING p_id INTO updated_count; 
    
    IF updated_count IS NULL THEN
        RETURN 0;
    ELSE
        RETURN 1;
    END IF;
END;
$$ LANGUAGE plpgsql;
