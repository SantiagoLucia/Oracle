CREATE OR REPLACE PROCEDURE delete_location(
    p_location_id IN locations.location_id%TYPE
)
IS
    l_count NUMBER;
BEGIN
    -- Validar si la locación existe
    SELECT COUNT(*)
    INTO l_count
    FROM locations
    WHERE location_id = p_location_id;

    IF l_count = 0 THEN
        RAISE_APPLICATION_ERROR(-20002, 'Location does not exist.');
    END IF;

    -- Verificar si la locación tiene departamentos asociados
    SELECT COUNT(*)
    INTO l_count
    FROM departments
    WHERE location_id = p_location_id;

    IF l_count > 0 THEN
        RAISE_APPLICATION_ERROR(-20003, 'Location has departments.');
    END IF;

    -- Eliminar la locación
    DELETE FROM locations
    WHERE location_id = p_location_id;

END delete_location;
