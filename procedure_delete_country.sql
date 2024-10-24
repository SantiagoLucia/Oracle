CREATE OR REPLACE PROCEDURE delete_country(
    p_country_id IN countries.country_id%TYPE
)
IS
    l_count NUMBER;
BEGIN
    -- Validar si el país existe
    SELECT COUNT(*)
    INTO l_count
    FROM countries
    WHERE country_id = p_country_id;

    IF l_count = 0 THEN
        RAISE_APPLICATION_ERROR(-20002, 'Country does not exist.');
    END IF;

    -- Verificar si hay ubicaciones asociadas al país
    SELECT COUNT(*)
    INTO l_count
    FROM locations
    WHERE country_id = p_country_id;

    IF l_count > 0 THEN
        RAISE_APPLICATION_ERROR(-20003, 'Country has locations.');
    END IF;

    -- Eliminar el país
    DELETE FROM countries
    WHERE country_id = p_country_id;

END delete_country;