BEGIN
    create_region(1, 'Europe'); -- Asegúrate de que el ID no existe
    DBMS_OUTPUT.PUT_LINE('Region Europe inserted successfully.');

    create_region(2, 'Americas'); -- Asegúrate de que el ID no existe
    DBMS_OUTPUT.PUT_LINE('Region Americas inserted successfully.');

    create_region(3, 'Asia'); -- Asegúrate de que el ID no existe
    DBMS_OUTPUT.PUT_LINE('Region Asia inserted successfully.');

    create_region(4, 'Middle East and Africa'); -- Asegúrate de que el ID no existe
    DBMS_OUTPUT.PUT_LINE('Region Middle East and Africa inserted successfully.');

    COMMIT;

EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('An error occurred: ' || SQLCODE || ' - ' || SQLERRM);
        ROLLBACK;

END;
