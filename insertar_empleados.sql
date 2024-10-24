INSERT INTO employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES
(1, 'John', 'Doe', 'john.doe@example.com', '555-1234', TO_DATE('2020-01-15', 'YYYY-MM-DD'), '20', 60000.00, 0.10, NULL, 10),
(2, 'Jane', 'Smith', 'jane.smith@example.com', '555-5678', TO_DATE('2019-05-23', 'YYYY-MM-DD'), '21', 75000.00, 0.12, 1, 20),
(3, 'Mike', 'Johnson', 'mike.johnson@example.com', '555-8765', TO_DATE('2021-03-10', 'YYYY-MM-DD'), '22', 50000.00, 0.08, 1, 30),
(4, 'Emily', 'Davis', 'emily.davis@example.com', '555-4321', TO_DATE('2018-06-30', 'YYYY-MM-DD'), '23', 85000.00, 0.15, 2, 40),
(5, 'Robert', 'Garcia', 'robert.garcia@example.com', '555-6543', TO_DATE('2022-02-01', 'YYYY-MM-DD'), '24', 52000.00, 0.05, 2, 50),
(6, 'Linda', 'Martinez', 'linda.martinez@example.com', '555-7654', TO_DATE('2020-09-15', 'YYYY-MM-DD'), '25', 78000.00, 0.09, 3, 60),
(7, 'James', 'Hernandez', 'james.hernandez@example.com', '555-3456', TO_DATE('2017-11-20', 'YYYY-MM-DD'), '26', 92000.00, 0.14, 3, 70),
(8, 'Patricia', 'Lopez', 'patricia.lopez@example.com', '555-9876', TO_DATE('2020-04-25', 'YYYY-MM-DD'), '27', 60000.00, 0.06, 4, 80),
(9, 'David', 'Wilson', 'david.wilson@example.com', '555-2589', TO_DATE('2021-01-10', 'YYYY-MM-DD'), '28', 67000.00, 0.07, 4, 90),
(10, 'Elizabeth', 'Taylor', 'elizabeth.taylor@example.com', '555-3698', TO_DATE('2019-07-15', 'YYYY-MM-DD'), '29', 88000.00, 0.11, 5, 100),
(11, 'Charles', 'Anderson', 'charles.anderson@example.com', '555-1478', TO_DATE('2018-08-20', 'YYYY-MM-DD'), '30', 64000.00, 0.04, 5, 110),
(12, 'Jessica', 'Thomas', 'jessica.thomas@example.com', '555-2584', TO_DATE('2020-03-30', 'YYYY-MM-DD'), '31', 73000.00, 0.13, 6, 10),
(13, 'William', 'Jackson', 'william.jackson@example.com', '555-6548', TO_DATE('2021-12-01', 'YYYY-MM-DD'), '32', 49000.00, 0.03, 6, 20),
(14, 'Sarah', 'White', 'sarah.white@example.com', '555-7890', TO_DATE('2017-02-18', 'YYYY-MM-DD'), '33', 78000.00, 0.10, 7, 30),
(15, 'Christopher', 'Harris', 'christopher.harris@example.com', '555-0987', TO_DATE('2020-06-10', 'YYYY-MM-DD'), '34', 58000.00, 0.09, 7, 40),
(16, 'Dorothy', 'Martin', 'dorothy.martin@example.com', '555-4567', TO_DATE('2018-09-30', 'YYYY-MM-DD'), '35', 80000.00, 0.08, 8, 50),
(17, 'Daniel', 'Thompson', 'daniel.thompson@example.com', '555-6542', TO_DATE('2021-05-20', 'YYYY-MM-DD'), '36', 67000.00, 0.07, 8, 60),
(18, 'Barbara', 'Garcia', 'barbara.garcia@example.com', '555-7321', TO_DATE('2019-11-15', 'YYYY-MM-DD'), '37', 92000.00, 0.11, 9, 70),
(19, 'Matthew', 'Martinez', 'matthew.martinez@example.com', '555-4132', TO_DATE('2020-08-05', 'YYYY-MM-DD'), '38', 52000.00, 0.05, 9, 80),
(20, 'Nancy', 'Roberts', 'nancy.roberts@example.com', '555-2134', TO_DATE('2021-04-12', 'YYYY-MM-DD'), '39', 69000.00, 0.09, 10, 90),
(21, 'Anthony', 'Nelson', 'anthony.nelson@example.com', '555-3746', TO_DATE('2020-05-21', 'YYYY-MM-DD'), '40', 76000.00, 0.10, 10, 100),
(22, 'Karen', 'Baker', 'karen.baker@example.com', '555-1357', TO_DATE('2019-02-27', 'YYYY-MM-DD'), '41', 88000.00, 0.15, 11, 110),
(23, 'Paul', 'Hall', 'paul.hall@example.com', '555-2468', TO_DATE('2021-07-09', 'YYYY-MM-DD'), '42', 58000.00, 0.04, 11, 10),
(24, 'Linda', 'Young', 'linda.young@example.com', '555-7894', TO_DATE('2021-06-01', 'YYYY-MM-DD'), '43', 45000.00, 0.03, 12, 20),
(25, 'George', 'Hernandez', 'george.hernandez@example.com', '555-3215', TO_DATE('2020-09-14', 'YYYY-MM-DD'), '44', 67000.00, 0.05, 12, 30),
(26, 'Ruth', 'King', 'ruth.king@example.com', '555-8529', TO_DATE('2021-01-17', 'YYYY-MM-DD'), '45', 92000.00, 0.10, 13, 40),
(27, 'Joshua', 'Scott', 'joshua.scott@example.com', '555-7531', TO_DATE('2020-03-28', 'YYYY-MM-DD'), '46', 58000.00, 0.07, 13, 50),
(28, 'Betty', 'Green', 'betty.green@example.com', '555-9642', TO_DATE('2021-05-12', 'YYYY-MM-DD'), '47', 73000.00, 0.09, 14, 60),
(29, 'Edward', 'Adams', 'edward.adams@example.com', '555-1593', TO_DATE('2020-07-20', 'YYYY-MM-DD'), '48', 66000.00, 0.06, 14, 70),
(30, 'Mildred', 'Baker', 'mildred.baker@example.com', '555-7532', TO_DATE('2019-08-30', 'YYYY-MM-DD'), '49', 80000.00, 0.11, 15, 80),
(31, 'Johnny', 'Rivera', 'johnny.rivera@example.com', '555-3678', TO_DATE('2021-10-03', 'YYYY-MM-DD'), '50', 74000.00, 0.12, 15, 90),
(32, 'Paula', 'Edwards', 'paula.edwards@example.com', '555-1596', TO_DATE('2019-03-05', 'YYYY-MM-DD'), '51', 72000.00, 0.08, 16, 100),
(33, 'Christine', 'Collins', 'christine.collins@example.com', '555-6428', TO_DATE('2020-02-11', 'YYYY-MM-DD'), '52', 60000.00, 0.10, 16, 110),
(34, 'Brad', 'Sanchez', 'brad.sanchez@example.com', '555-4891', TO_DATE('2021-04-27', 'YYYY-MM-DD'), '53', 59000.00, 0.07, 17, 10),
(35, 'Irene', 'Perez', 'irene.perez@example.com', '555-9875', TO_DATE('2020-11-30', 'YYYY-MM-DD'), '54', 56000.00, 0.05, 17, 20),
(36, 'Eugene', 'Roberts', 'eugene.roberts@example.com', '555-1235', TO_DATE('2019-12-21', 'YYYY-MM-DD'), '55', 58000.00, 0.06, 18, 30),
(37, 'Lola', 'Stewart', 'lola.stewart@example.com', '555-4157', TO_DATE('2021-09-25', 'YYYY-MM-DD'), '56', 62000.00, 0.09, 18, 40),
(38, 'Willie', 'Flores', 'willie.flores@example.com', '555-8453', TO_DATE('2020-05-19', 'YYYY-MM-DD'), '57', 58000.00, 0.08, 19, 50),
(39, 'Eva', 'Murphy', 'eva.murphy@example.com', '555-6548', TO_DATE('2021-03-15', 'YYYY-MM-DD'), '58', 66000.00, 0.06, 19, 60),
(40, 'Jordan', 'Long', 'jordan.long@example.com', '555-8790', TO_DATE('2019-04-10', 'YYYY-MM-DD'), '59', 74000.00, 0.12, 20, 70),
(41, 'Alice', 'Morris', 'alice.morris@example.com', '555-3218', TO_DATE('2021-08-11', 'YYYY-MM-DD'), '60', 80000.00, 0.13, 20, 80),
(42, 'Sam', 'Bailey', 'sam.bailey@example.com', '555-2145', TO_DATE('2020-10-09', 'YYYY-MM-DD'), '61', 65000.00, 0.14, 21, 90),
(43, 'Grace', 'Rivera', 'grace.rivera@example.com', '555-7852', TO_DATE('2021-06-20', 'YYYY-MM-DD'), '62', 72000.00, 0.12, 21, 100),
(44, 'Fred', 'Hernandez', 'fred.hernandez@example.com', '555-3679', TO_DATE('2020-12-15', 'YYYY-MM-DD'), '63', 61000.00, 0.10, 22, 110),
(45, 'Annie', 'Gonzalez', 'annie.gonzalez@example.com', '555-9871', TO_DATE('2018-03-10', 'YYYY-MM-DD'), '64', 59000.00, 0.06, 22, 10),
(46, 'Albert', 'Gonzalez', 'albert.gonzalez@example.com', '555-6549', TO_DATE('2021-07-23', 'YYYY-MM-DD'), '65', 72000.00, 0.08, 23, 20),
(47, 'Debra', 'Jones', 'debra.jones@example.com', '555-8523', TO_DATE('2020-09-18', 'YYYY-MM-DD'), '66', 78000.00, 0.12, 23, 30),
(48, 'Nathan', 'Sanchez', 'nathan.sanchez@example.com', '555-6548', TO_DATE('2019-06-05', 'YYYY-MM-DD'), '67', 65000.00, 0.14, 24, 40),
(49, 'Samantha', 'Martinez', 'samantha.martinez@example.com', '555-1239', TO_DATE('2021-02-14', 'YYYY-MM-DD'), '68', 69000.00, 0.10, 24, 50),
(50, 'Russell', 'Butler', 'russell.butler@example.com', '555-4561', TO_DATE('2021-11-11', 'YYYY-MM-DD'), '69', 62000.00, 0.07, 25, 60);