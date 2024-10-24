BEGIN
    create_job(1, 'Public Relations Representative', 4500, 10500);
    create_job(2, 'Marketing Specialist', 5000, 9500);
    create_job(3, 'Marketing Manager', 9000, 15000);
    create_job(4, 'Public Relations Manager', 10000, 17500);
    create_job(5, 'Purchasing Clerk', 2500, 5500);
    create_job(6, 'Purchasing Manager', 8000, 15000);
    create_job(7, 'Shipping Clerk', 2500, 5500);
    create_job(8, 'Shipping Manager', 8000, 15000);
    create_job(9, 'Stock Clerk', 2000, 5000);
    create_job(10, 'Stock Manager', 7500, 15000);
    create_job(11, 'Human Resources Representative', 4000, 9000);
    create_job(12, 'Human Resources Manager', 9000, 15000);
    create_job(13, 'Accounting Clerk', 3000, 6000);
    create_job(14, 'Public Accountant', 6000, 10500);
    create_job(15, 'Finance Manager', 10000, 20000);
    create_job(16, 'Accounting Manager', 9500, 14000);
    create_job(17, 'Administration Assistant', 3000, 6000);
    create_job(18, 'Administration Vice President', 15000, 30000);
    create_job(19, 'Programmer', 4000, 10000);
    create_job(20, 'IT Manager', 10000, 17500);
    create_job(21, 'Sales Representative', 6000, 12000);
    create_job(22, 'Sales Manager', 10000, 18000);
    create_job(23, 'Executive', 12000, 25000);
    create_job(24, 'President', 20000, 40000);
    create_job(25, 'Operations Manager', 8000, 15000);
    

    DBMS_OUTPUT.PUT_LINE('Locations inserted successfully.');

    COMMIT;

EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('An error occurred: ' || SQLCODE || ' - ' || SQLERRM);
        ROLLBACK;

END;