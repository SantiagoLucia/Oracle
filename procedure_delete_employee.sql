CREATE OR REPLACE PROCEDURE delete_employee(
    p_id_employee IN employees.employee_id%TYPE
)
IS
    l_count NUMBER;
BEGIN
    -- Validar si el empleado existe
    SELECT COUNT(*)
    INTO l_count
    FROM employees
    WHERE employee_id = p_id_employee;

    IF l_count = 0 THEN
        RAISE_APPLICATION_ERROR(-20001, 'Employee does not exist.');
    END IF;

    -- Eliminar el empleado
    DELETE FROM employees
    WHERE employee_id = p_id_employee;

END delete_employee;
