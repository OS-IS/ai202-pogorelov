CREATE OR REPLACE FUNCTION change_data(person_name VARCHAR, new_age INT)
RETURNS VOID AS $$
DECLARE
    query VARCHAR;
BEGIN
    query := 'UPDATE persons SET age = ' || new_age || ' WHERE person_name = ''' || person_name || '''';
    RAISE NOTICE 'Query=%', query;
    EXECUTE query;
END;
$$ LANGUAGE plpgsql;
