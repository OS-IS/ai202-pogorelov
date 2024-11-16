CREATE OR REPLACE FUNCTION change_data_secure(person_name VARCHAR, new_age INT)
RETURNS VOID AS $$
BEGIN
    EXECUTE 'UPDATE persons SET age = $1 WHERE person_name = $2'
    USING new_age, person_name;
END;
$$ LANGUAGE plpgsql;
