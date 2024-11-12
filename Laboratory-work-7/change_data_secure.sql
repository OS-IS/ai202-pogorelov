CREATE OR REPLACE FUNCTION change_data_secure(attribute1 text, attribute2 text)
RETURNS INTEGER AS $$
BEGIN
    UPDATE persons
    SET person_name = attribute2
    WHERE person_name = attribute1
    RETURNING p_id INTO result;

    IF result IS NULL THEN
        RETURN 0;
    ELSE
        RETURN 1;
    END IF;
END;
$$ LANGUAGE plpgsql;
