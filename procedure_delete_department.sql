CREATE OR REPLACE PROCEDURE delete_department(
    p_department_id IN departments.department_id%TYPE
)
IS
    l_count NUMBER;
BEGIN
    -- Validar si el departamento existe
    SELECT COUNT(*)
    INTO l_count
    FROM departments
    WHERE department_id = p_department_id;

    IF l_count = 0 THEN
        RAISE_APPLICATION_ERROR(-20002, 'Department does not exist.');
    END IF;

    -- Verificar si hay empleados asociados al departamento
    SELECT COUNT(*)
    INTO l_count
    FROM employees
    WHERE department_id = p_department_id;

    IF l_count > 0 THEN
        RAISE_APPLICATION_ERROR(-20003, 'Department has employees.');
    END IF;

    -- Eliminar el departamento
    DELETE FROM departments
    WHERE department_id = p_department_id;

END delete_department;
