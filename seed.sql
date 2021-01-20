USE employees_DB;

INSERT INTO departments (departmentName) VALUES ("Human Resources");
INSERT INTO departments (departmentName) VALUES ("Sales");
INSERT INTO departments (departmentName) VALUES ("Customer Service");
INSERT INTO departments (departmentName) VALUES ("Corporate");
INSERT INTO departments (departmentName) VALUES ("Accounting");

INSERT INTO roles (jobTitle, salary, departments_id) VALUES ("General Manager", 70, 3);
INSERT INTO roles (jobTitle, salary, departments_id) VALUES ("Communications Associate", 50, 2);
INSERT INTO roles (jobTitle, salary, departments_id) VALUES ("Receptiontist", 50, 2);
INSERT INTO roles (jobTitle, salary, departments_id) VALUES ("Salesman", 40, 2);
INSERT INTO roles (jobTitle, salary, departments_id) VALUES ("Customer Service", 45, );

INSERT INTO employees (firstName, lastName, role_id) VALUES ("Micheal", "Scott", 1);
INSERT INTO employees (firstName, lastName, role_id) VALUES ("Jim", "Halpert", 2);
INSERT INTO employees (firstName, lastName, role_id) VALUES ("Pam", "Beesly", 3);
INSERT INTO employees (firstName, lastName, role_id) VALUES ("Dwight", "Schrute", 2);
INSERT INTO employees (firstName, lastName, role_id) VALUES ("Angela", "Martin", 5);
