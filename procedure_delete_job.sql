CREATE OR REPLACE PROCEDURE delete_job(
    p_id_job IN jobs.job_id%TYPE
)
IS
    l_count NUMBER;
BEGIN
    -- Validar si el trabajo existe
    SELECT COUNT(*)
    INTO l_count
    FROM jobs
    WHERE job_id = p_id_job;

    IF l_count = 0 THEN
        RAISE_APPLICATION_ERROR(-20001, 'Job does not exist.');
    END IF;

    -- Verificar si el trabajo está asignado a algún empleado
    SELECT COUNT(*)
    INTO l_count
    FROM employees
    WHERE job_id = p_id_job;

    IF l_count > 0 THEN
        RAISE_APPLICATION_ERROR(-20002, 'Job is assigned to an employee.');
    END IF;

    -- Eliminar el trabajo
    DELETE FROM jobs
    WHERE job_id = p_id_job;

END delete_job;
