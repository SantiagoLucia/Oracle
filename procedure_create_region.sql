CREATE OR REPLACE PROCEDURE create_region(
    p_region_id IN regions.region_id%TYPE,
    p_region_name IN regions.region_name%TYPE
)
IS
    l_count NUMBER;
BEGIN
    -- Validar si la región ya existe
    SELECT COUNT(*)
    INTO l_count
    FROM regions
    WHERE region_id = p_region_id;
    
    IF l_count > 0 THEN
        RAISE_APPLICATION_ERROR(-20001, 'Region already exists.');
    END IF;

    -- Insertar la nueva región
    INSERT INTO regions(region_id, region_name)
    VALUES(p_region_id, p_region_name);

END create_region;
