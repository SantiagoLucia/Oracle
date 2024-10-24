DROP TABLE countries;
DROP TABLE regions;
DROP TABLE locations;
DROP TABLE departments;
DROP TABLE jobs;
DROP TABLE job_history;
DROP TABLE employees;

-- table countries
CREATE TABLE countries (
    country_id CHAR(2) PRIMARY KEY,
    country_name VARCHAR(40),
    region_id INT
);

-- table regions
CREATE TABLE regions (
    region_id INT PRIMARY KEY,
    region_name VARCHAR(25)
);

-- table locations
CREATE TABLE locations (
    location_id INT PRIMARY KEY,
    street_address VARCHAR(40),
    postal_code VARCHAR(12),
    city VARCHAR(30),
    state_province VARCHAR(25),
    country_id CHAR(2)
);

-- table departments
CREATE TABLE departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(30),
    manager_id INT,
    location_id INT
);

-- table jobs
CREATE TABLE jobs (
    job_id VARCHAR(10) PRIMARY KEY,
    job_title VARCHAR(35),
    min_salary DECIMAL(6, 0),
    max_salary DECIMAL(6, 0)
);

-- table job_history
CREATE TABLE job_history (
    employee_id INT,
    start_date DATE,
    end_date DATE,
    job_id VARCHAR(10),
    department_id INT
);

-- table employees
CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    first_name VARCHAR(20),
    last_name VARCHAR(25),
    email VARCHAR(25),
    phone_number VARCHAR(20),
    hire_date DATE,
    job_id VARCHAR(10),
    salary DECIMAL(8, 2),
    commission_pct DECIMAL(2, 2),
    manager_id INT,
    department_id INT
);

ALTER TABLE countries
ADD CONSTRAINT fk_countries_regions
FOREIGN KEY (region_id)
REFERENCES regions(region_id);

ALTER TABLE locations
ADD CONSTRAINT fk_locations_countries
FOREIGN KEY (country_id)
REFERENCES countries(country_id);

ALTER TABLE departments
ADD CONSTRAINT fk_departments_locations
FOREIGN KEY (location_id)
REFERENCES locations(location_id);

ALTER TABLE departments
ADD CONSTRAINT fk_departments_employees
FOREIGN KEY (manager_id)
REFERENCES employees(employee_id);

ALTER TABLE job_history
ADD CONSTRAINT fk_job_history_employees
FOREIGN KEY (employee_id)
REFERENCES employees(employee_id);

ALTER TABLE job_history
ADD CONSTRAINT fk_job_history_jobs
FOREIGN KEY (job_id)
REFERENCES jobs(job_id);

ALTER TABLE job_history
ADD CONSTRAINT fk_job_history_departments
FOREIGN KEY (department_id)
REFERENCES departments(department_id);

ALTER TABLE employees
ADD CONSTRAINT fk_employees_jobs
FOREIGN KEY (job_id)
REFERENCES jobs(job_id);

ALTER TABLE employees
ADD CONSTRAINT fk_employees_departments
FOREIGN KEY (department_id)
REFERENCES departments(department_id);

ALTER TABLE employees
ADD CONSTRAINT fk_employees_employees
FOREIGN KEY (manager_id)
REFERENCES employees(employee_id);