BEGIN
    create_country(1, 'Spain', 1);
    create_country(2, 'France', 1);
    create_country(3, 'Germany', 1);
    create_country(4, 'Italy', 1);
    create_country(5, 'United Kingdom', 1);
    create_country(6, 'United States', 2);
    create_country(7, 'Canada', 2);
    create_country(8, 'Mexico', 2);
    create_country(9, 'Brazil', 2);
    create_country(10, 'Argentina', 2);
    create_country(11, 'China', 3);
    create_country(12, 'Japan', 3);
    create_country(13, 'India', 3);
    create_country(14, 'South Korea', 3);
    create_country(15, 'Australia', 3);
    create_country(16, 'Saudi Arabia', 4);
    create_country(17, 'South Africa', 4);
    create_country(18, 'United Arab Emirates', 4);
    create_country(19, 'Egypt', 4);
    create_country(20, 'Turkey', 4);

    DBMS_OUTPUT.PUT_LINE('Countries inserted successfully.');

    COMMIT;

EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('An error occurred: ' || SQLCODE || ' - ' || SQLERRM);
        ROLLBACK;

END;