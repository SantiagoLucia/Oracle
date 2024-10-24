BEGIN
    create_location(1, 'Calle de la Paz, 1', '28000', 'Madrid', 'Madrid', 1);
    create_location(2, 'Rue de la Paix, 1', '75000', 'Paris', 'Ile de France', 2);
    create_location(3, 'Friedensstraße, 1', '10115', 'Berlin', 'Berlin', 3);
    create_location(4, 'Via della Pace, 1', '00186', 'Roma', 'Lazio', 4);
    create_location(5, 'Peace Street, 1', 'SW1A 1AA', 'London', 'London', 5);
    create_location(6, '1600 Amphitheatre Parkway', '94043', 'Mountain View', 'California', 6);
    create_location(7, '111 Rue Saint-Antoine', 'H2Z 1H2', 'Montreal', 'Quebec', 7);
    create_location(8, 'Paseo de la Reforma, 342', '06500', 'Mexico City', 'Distrito Federal', 8);
    create_location(9, 'Avenida Paulista, 1000', '01310-100', 'São Paulo', 'São Paulo', 9);
    create_location(10, 'Avenida del Libertador, 1000', 'C1001ABR', 'Buenos Aires', 'Buenos Aires', 10);
    create_location(11, 'Zhongguancun Street, 100', '100190', 'Beijing', 'Beijing', 11);
    create_location(12, 'Shibakoen, 1-1', '105-0011', 'Minato-ku, Tokyo', 'Tokyo', 12);
    create_location(13, 'MG Road, 1', '560001', 'Bangalore', 'Karnataka', 13);
    create_location(14, 'Teheranno, 1', '06164', 'Seoul', 'Seoul', 14);
    create_location(15, '48 Pirrama Road', '2009', 'Pyrmont', 'New South Wales', 15);
    create_location(16, 'King Abdulaziz Road, 12344', '11495', 'Riyadh', 'Riyadh', 16);
    create_location(17, 'Rivonia Road, 135', '2196', 'Sandton', 'Gauteng', 17);
    create_location(18, 'Sheikh Zayed Road, 123', 'Dubai', 'Dubai', 18);
    create_location(19, 'Tahrir Square', '11511', 'Cairo', 'Cairo', 19);
    create_location(20, 'Atatürk Bulvarı, 198', '06680', 'Çankaya, Ankara', 'Ankara', 20);

    DBMS_OUTPUT.PUT_LINE('Locations inserted successfully.');

    COMMIT;

EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('An error occurred: ' || SQLCODE || ' - ' || SQLERRM);
        ROLLBACK;

END;