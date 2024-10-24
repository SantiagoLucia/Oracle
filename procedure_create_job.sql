CREATE OR REPLACE PROCEDURE create_job(
    p_job_id IN jobs.job_id%TYPE,
    p_job_title IN jobs.job_title%TYPE,
    p_min_salary IN jobs.min_salary%TYPE,
    p_max_salary IN jobs.max_salary%TYPE
)
IS
    l_count NUMBER;
BEGIN
    -- Validar si el trabajo ya existe
    SELECT COUNT(*)
    INTO l_count
    FROM jobs
    WHERE job_id = p_job_id;

    IF l_count > 0 THEN
        RAISE_APPLICATION_ERROR(-20001, 'Job already exists.');
    END IF;

    -- Insertar el nuevo trabajo
    INSERT INTO jobs(job_id, job_title, min_salary, max_salary)
    VALUES(p_job_id, p_job_title, p_min_salary, p_max_salary);

END create_job;
