BEGIN
    create_department(10, 'Administration', null, 1);
    create_department(20, 'Marketing', null, 1);
    create_department(30, 'Purchasing', null, 1);
    create_department(40, 'Human Resources', null, 1);
    create_department(50, 'Shipping', null, 2);
    create_department(60, 'IT', null, 2);
    create_department(70, 'Public Relations', null, 2);
    create_department(80, 'Sales', null, 3);
    create_department(90, 'Executive', null, 3);
    create_department(100, 'Finance', null, 3);
    create_department(110, 'Accounting', null, 3);


    DBMS_OUTPUT.PUT_LINE('Data inserted successfully.');

    COMMIT;

EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('An error occurred: ' || SQLCODE || ' - ' || SQLERRM);
        ROLLBACK;

END;