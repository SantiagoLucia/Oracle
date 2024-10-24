CREATE OR REPLACE PROCEDURE create_job_history(
    p_employee_id IN employees.employee_id%TYPE,
    p_start_date IN job_history.start_date%TYPE,
    p_end_date IN job_history.end_date%TYPE,
    p_job_id IN job_history.job_id%TYPE,
    p_department_id IN job_history.department_id%TYPE
)
IS
    l_count NUMBER;
BEGIN
    -- Validar si el empleado existe
    SELECT COUNT(*)
    INTO l_count
    FROM employees
    WHERE employee_id = p_employee_id;
    
    IF l_count = 0 THEN
        RAISE_APPLICATION_ERROR(-20002, 'Employee does not exist.');
    END IF;
    
    -- Validar si el trabajo existe
    SELECT COUNT(*)
    INTO l_count
    FROM jobs
    WHERE job_id = p_job_id;
    
    IF l_count = 0 THEN
        RAISE_APPLICATION_ERROR(-20003, 'Job does not exist.');
    END IF;
    
    -- Validar si el departamento existe
    SELECT COUNT(*)
    INTO l_count
    FROM departments
    WHERE department_id = p_department_id;
    
    IF l_count = 0 THEN
        RAISE_APPLICATION_ERROR(-20004, 'Department does not exist.');
    END IF;
    
    -- Insertar la nueva historia de trabajo
    INSERT INTO job_history(employee_id, start_date, end_date, job_id, department_id)
    VALUES(p_employee_id, p_start_date, p_end_date, p_job_id, p_department_id);
    
END create_job_history;
