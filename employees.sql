DROP DATABASE IF EXISTS employees_DB; 
CREATE DATABASE employees_DB;
USE employees_DB;

CREATE TABLE departments (
    id INT NOT NULL AUTO_INCREMENT,
    departmentName VARCHAR(30), 
    PRIMARY KEY(id)
);

CREATE TABLE roles (
    id INT (10) NOT NULL AUTO_INCREMENT,
    jobTitle VARCHAR(30),
    salary DECIMAL(10,2),
    departments_id INT (10) NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (departments_id)
    REFERENCES departments(id)
);

CREATE TABLE employees (
	id INT NOT NULL AUTO_INCREMENT,
    firstName VARCHAR (30),
    lastName VARCHAR (30),
    role_id INT (10) NOT NULL,
    manager_id INT (10),
    PRIMARY KEY (id),
    FOREIGN KEY(role_id)
    REFERENCES roles(id),
    FOREIGN KEY(manager_id)
    REFERENCES employees(id)
);

SELECT * FROM departments;
SELECT * FROM employees;
SELECT * FROM roles;