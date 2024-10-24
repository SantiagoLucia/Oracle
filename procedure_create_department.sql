CREATE OR REPLACE PROCEDURE create_department(
    p_department_id IN departments.department_id%TYPE,
    p_department_name IN departments.department_name%TYPE,
    p_manager_id IN departments.manager_id%TYPE,
    p_location_id IN departments.location_id%TYPE
)
IS
    l_count NUMBER;
BEGIN
    -- Validar si el departamento ya existe
    SELECT COUNT(*)
    INTO l_count
    FROM departments
    WHERE department_id = p_department_id;
    
    IF l_count > 0 THEN
        RAISE_APPLICATION_ERROR(-20001, 'Department already exists.');
    END IF;
    
    -- Validar si el manager existe
    SELECT COUNT(*)
    INTO l_count
    FROM employees
    WHERE employee_id = p_manager_id;
    
    IF l_count = 0 THEN
        RAISE_APPLICATION_ERROR(-20002, 'Manager does not exist.');
    END IF;
    
    -- Validar si la ubicación existe
    SELECT COUNT(*)
    INTO l_count
    FROM locations
    WHERE location_id = p_location_id;
    
    IF l_count = 0 THEN
        RAISE_APPLICATION_ERROR(-20003, 'Location does not exist.');
    END IF;
    
    -- Insertar el nuevo departamento
    INSERT INTO departments(department_id, department_name, manager_id, location_id)
    VALUES(p_department_id, p_department_name, p_manager_id, p_location_id);

END create_department;