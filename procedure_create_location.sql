CREATE OR REPLACE PROCEDURE create_location(
    p_location_id IN locations.location_id%TYPE,
    p_street_address IN locations.street_address%TYPE,
    p_postal_code IN locations.postal_code%TYPE,
    p_city IN locations.city%TYPE,
    p_state_province IN locations.state_province%TYPE,
    p_country_id IN locations.country_id%TYPE
)
IS
    l_count NUMBER;
BEGIN
    -- Validar si la locación ya existe
    SELECT COUNT(*)
    INTO l_count
    FROM locations
    WHERE location_id = p_location_id;
    
    IF l_count > 0 THEN
        RAISE_APPLICATION_ERROR(-20001, 'Location already exists.');
    END IF;

    -- Validar si el país existe
    SELECT COUNT(*)
    INTO l_count
    FROM countries
    WHERE country_id = p_country_id;

    IF l_count = 0 THEN
        RAISE_APPLICATION_ERROR(-20002, 'Country does not exist.');
    END IF;

    -- Insertar la nueva locación
    INSERT INTO locations(location_id, street_address, postal_code, city, state_province, country_id)
    VALUES(p_location_id, p_street_address, p_postal_code, p_city, p_state_province, p_country_id);

END create_location;
