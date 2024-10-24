-- Procedimiento para crear un nuevo departamento en la base de datos

CREATE OR REPLACE PROCEDURE create_department(
    p_department_id IN departments.department_id%TYPE,
    p_department_name IN departments.department_name%TYPE,
    p_manager_id IN departments.manager_id%TYPE,
    p_location_id IN departments.location_id%TYPE
)
IS
    l_department_id departments.department_id%TYPE;
    l_manager_id departments.manager_id%TYPE;
    l_location_id departments.location_id%TYPE;
BEGIN
    SELECT department_id
    INTO l_department_id
    FROM departments
    WHERE department_id = p_department_id;
    
    IF l_department_id IS NOT NULL THEN
        RAISE_APPLICATION_ERROR(-20001, 'Department already exists.');
    END IF;
    
    SELECT employee_id
    INTO l_manager_id
    FROM employees
    WHERE employee_id = p_manager_id;
    
    IF l_manager_id IS NULL THEN
        RAISE_APPLICATION_ERROR(-20002, 'Manager does not exist.');
    END IF;
    
    SELECT location_id
    INTO l_location_id
    FROM locations
    WHERE location_id = p_location_id;
    
    IF l_location_id IS NULL THEN
        RAISE_APPLICATION_ERROR(-20003, 'Location does not exist.');
    END IF;
    
    INSERT INTO departments(department_id, department_name, manager_id, location_id)
    VALUES(p_department_id, p_department_name, p_manager_id, p_location_id);
        
END create_department;