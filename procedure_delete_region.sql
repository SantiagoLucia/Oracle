CREATE OR REPLACE PROCEDURE delete_region(
    p_region_id IN regions.region_id%TYPE
)
IS
    l_count NUMBER;
BEGIN
    -- Validar si la región existe
    SELECT COUNT(*)
    INTO l_count
    FROM regions
    WHERE region_id = p_region_id;

    IF l_count = 0 THEN
        RAISE_APPLICATION_ERROR(-20002, 'Region does not exist.');
    END IF;

    -- Verificar si la región tiene países asociados
    SELECT COUNT(*)
    INTO l_count
    FROM countries
    WHERE region_id = p_region_id;

    IF l_count > 0 THEN
        RAISE_APPLICATION_ERROR(-20003, 'Region has countries.');
    END IF;

    -- Eliminar la región
    DELETE FROM regions
    WHERE region_id = p_region_id;

END delete_region;
