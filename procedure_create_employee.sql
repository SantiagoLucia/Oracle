CREATE OR REPLACE PROCEDURE create_employee(
    p_employee_id IN employees.employee_id%TYPE,
    p_manager_id IN employees.manager_id%TYPE,
    p_department_id IN employees.department_id%TYPE,
    p_first_name IN employees.first_name%TYPE,
    p_last_name IN employees.last_name%TYPE,
    p_email IN employees.email%TYPE,
    p_phone_number IN employees.phone_number%TYPE,
    p_hire_date IN employees.hire_date%TYPE,
    p_job_id IN employees.job_id%TYPE,
    p_salary IN employees.salary%TYPE,
    p_commission_pct IN employees.commission_pct%TYPE
)
IS
    l_count NUMBER;
BEGIN
    -- Validar si el empleado ya existe
    SELECT COUNT(*)
    INTO l_count
    FROM employees
    WHERE employee_id = p_employee_id;
    
    IF l_count > 0 THEN
        RAISE_APPLICATION_ERROR(-20001, 'Employee already exists.');
    END IF;
    
    -- Validar si el manager existe
    IF p_manager_id IS NOT NULL THEN
        SELECT COUNT(*)
        INTO l_count
        FROM employees
        WHERE employee_id = p_manager_id;
        
        IF l_count = 0 THEN
            RAISE_APPLICATION_ERROR(-20002, 'Manager does not exist.');
        END IF;
    END IF;
    
    -- Validar si el departamento existe
    SELECT COUNT(*)
    INTO l_count
    FROM departments
    WHERE department_id = p_department_id;
    
    IF l_count = 0 THEN
        RAISE_APPLICATION_ERROR(-20003, 'Department does not exist.');
    END IF;
    
    -- Validar si el trabajo existe
    SELECT COUNT(*)
    INTO l_count
    FROM jobs
    WHERE job_id = p_job_id;
    
    IF l_count = 0 THEN
        RAISE_APPLICATION_ERROR(-20004, 'Job does not exist.');
    END IF;
    
    -- Insertar el nuevo empleado
    INSERT INTO employees(employee_id, manager_id, department_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct)
    VALUES(p_employee_id, p_manager_id, p_department_id, p_first_name, p_last_name, p_email, p_phone_number, p_hire_date, p_job_id, p_salary, p_commission_pct);

END create_employee;
