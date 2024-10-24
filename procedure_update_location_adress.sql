CREATE OR REPLACE PROCEDURE update_location_address(
    p_location_id IN NUMBER,
    p_new_street_address IN VARCHAR2
)
IS
    l_count NUMBER;
BEGIN
    BEGIN
        -- Verificar si la locación existe
        SELECT COUNT(*)
        INTO l_count
        FROM locations
        WHERE location_id = p_location_id;

        IF l_count = 0 THEN
            RAISE_APPLICATION_ERROR(-20001, 'Location not found');
        END IF;
    END;

    -- Actualizar la dirección de la locación
    UPDATE locations
    SET street_address = p_new_street_address
    WHERE location_id = p_location_id;

END update_location_address;
