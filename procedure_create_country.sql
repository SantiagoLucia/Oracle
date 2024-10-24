CREATE OR REPLACE PROCEDURE create_country(
    p_country_id IN countries.country_id%TYPE,
    p_country_name IN countries.country_name%TYPE,
    p_region_id IN countries.region_id%TYPE
)
IS
    l_count NUMBER;
BEGIN
    -- Validar si el país ya existe
    SELECT COUNT(*)
    INTO l_count
    FROM countries
    WHERE country_id = p_country_id;
    
    IF l_count > 0 THEN
        RAISE_APPLICATION_ERROR(-20001, 'Country already exists.');
    END IF;
    
    -- Validar si la región existe
    SELECT COUNT(*)
    INTO l_count
    FROM regions
    WHERE region_id = p_region_id;
    
    IF l_count = 0 THEN
        RAISE_APPLICATION_ERROR(-20002, 'Region does not exist.');
    END IF;
    
    -- Insertar el nuevo país
    INSERT INTO countries(country_id, country_name, region_id)
    VALUES(p_country_id, p_country_name, p_region_id);
    
    -- Confirmar los cambios si se desea garantizar la persistencia inmediata
    -- COMMIT;  -- Descomentar si es necesario

END create_country;
