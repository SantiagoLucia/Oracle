-- Procedimiento para crear una nueva locación en la base de datos

CREATE OR REPLACE PROCEDURE create_location(
    p_location_id IN locations.location_id%TYPE,
    p_street_address IN locations.street_address%TYPE,
    p_postal_code IN locations.postal_code%TYPE,
    p_city IN locations.city%TYPE,
    p_state_province IN locations.state_province%TYPE,
    p_country_id IN locations.country_id%TYPE
)
IS
    l_location_id locations.location_id%TYPE;
    l_country_id locations.country_id%TYPE;
BEGIN

    SELECT location_id
    INTO l_location_id
    FROM locations
    WHERE location_id = p_location_id;
    
    IF l_location_id IS NOT NULL THEN
        RAISE_APPLICATION_ERROR(-20001, 'Location already exists.');
    END IF;
    
    SELECT country_id
    INTO l_country_id
    FROM countries
    WHERE country_id = p_country_id;
    
    IF l_country_id IS NULL THEN
        RAISE_APPLICATION_ERROR(-20002, 'Country does not exist.');
    END IF;
    
    INSERT INTO locations(location_id, street_address, postal_code, city, state_province, country_id)
    VALUES(p_location_id, p_street_address, p_postal_code, p_city, p_state_province, p_country_id);
    
END create_location;    