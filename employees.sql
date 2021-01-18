DROP DATABASE IF EXISTS employees_DB; 
CREATE DATABASE employees_DB;
USE employees_DB;

CREATE TABLE departments (
    id INT NOT NULL,
    departmentName VARCHAR(30), 
    PRIMARY KEY(id)
);

CREATE TABLE roles (
    id INT (10) NOT NULL,
    jobTitle VARCHAR(30),
    salary DECIMAL(10,2),
    department_id INT (10) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE employees (
	id INT NOT NULL,
    firstName VARCHAR (30),
    lastName VARCHAR (30),
    role_id INT (10) NOT NULL,
    manager_id INT (10),
    PRIMARY KEY (id)
);

SELECT * FROM 



-- manager_id - INT to hold reference to another employee that manages the employee being Created. This field may be null if the employee has no manager