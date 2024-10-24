-- Procedimiento que crea una región en la base de datos

CREATE OR REPLACE PROCEDURE create_region(
    p_region_id IN regions.region_id%TYPE,
    p_region_name IN regions.region_name%TYPE
)
IS
    l_region_id regions.region_id%TYPE;
BEGIN
    SELECT region_id
    INTO l_region_id
    FROM regions
    WHERE region_id = p_region_id;

    IF l_region_id IS NOT NULL THEN
        RAISE_APPLICATION_ERROR(-20001, 'Region already exists.');
    END IF;
    
    INSERT INTO regions(region_id, region_name)
    VALUES(p_region_id, p_region_name);

END create_region;