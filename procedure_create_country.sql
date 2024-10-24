-- Procedimiento que crea un país en la base de datos

CREATE OR REPLACE PROCEDURE create_country(
    p_country_id IN countries.country_id%TYPE,
    p_country_name IN countries.country_name%TYPE,
    p_region_id IN countries.region_id%TYPE
)
IS
    l_country_id countries.country_id%TYPE;
    l_region_id countries.region_id%TYPE;
BEGIN
    SELECT country_id
    INTO l_country_id
    FROM countries
    WHERE country_id = p_country_id;

    IF l_country_id IS NOT NULL THEN
        RAISE_APPLICATION_ERROR(-20001, 'Country already exists.');
    END IF;
    
    SELECT region_id
    INTO l_region_id
    FROM regions
    WHERE region_id = p_region_id;

    IF l_region_id IS NULL THEN
        RAISE_APPLICATION_ERROR(-20002, 'Region does not exist.');
    END IF;

    INSERT INTO countries(country_id, country_name, region_id)
    VALUES(p_country_id, p_country_name, p_region_id);

END create_country;