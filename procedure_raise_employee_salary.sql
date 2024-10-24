CREATE OR REPLACE PROCEDURE raise_employee_salary (
    employee_id IN NUMBER, 
    raise_amount IN NUMBER
)
IS
    current_salary NUMBER;
    updated_salary NUMBER;
BEGIN
    -- Verificar si el empleado existe
    SELECT salary INTO current_salary
    FROM employees
    WHERE employee_id = employee_id;

    -- Calcular el nuevo salario
    updated_salary := current_salary + raise_amount;

    -- Actualizar el salario del empleado
    UPDATE employees
    SET salary = updated_salary
    WHERE employee_id = employee_id;

EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RAISE_APPLICATION_ERROR(-20001, 'Employee not found');
    WHEN OTHERS THEN
        RAISE_APPLICATION_ERROR(-20002, 'An error occurred');
                
END raise_employee_salary;
