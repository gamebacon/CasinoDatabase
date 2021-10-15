CREATE DATABASE theoffice;
USE theoffice;




CREATE TABLE branches
(
	id INT PRIMARY KEY NOT NULL,
    branchName VARCHAR(255),
	manager_id INT
);

INSERT INTO branches (id, branchName, manager_id) VALUES (1, "Corperate", 1);
INSERT INTO branches (id, branchName, manager_id) VALUES (2, "Stamford", 1);
INSERT INTO branches (id, branchName, manager_id) VALUES (3, "Scranton", 2);


CREATE TABLE managers
(
	id INT NOT NULL PRIMARY KEY,
    fullName VARCHAR(255),
    branch_id INT
);


INSERT INTO managers (id, fullName, branch_id) VALUES (1, "David Wallace", 1);
INSERT INTO managers (id, fullName, branch_id) VALUES (2, "Jan Levinsson", 1);
INSERT INTO managers (id, fullName, branch_id) VALUES (3, "Josh Porter", 2);
INSERT INTO managers (id, fullName, branch_id) VALUES (4, "Michael Scott", 3);




CREATE TABLE employees
(
	id INT PRIMARY KEY NOT NULL,
    fullName VARCHAR(255),
	branch_id INT NOT NULL,
    manager_id INT
);

INSERT INTO employees (id, fullName, branch_id, manager_id) VALUES (1, "David Wallace", 1, null);
INSERT INTO employees (id, fullName, branch_id, manager_id) VALUES (2, "Jan Levingsson", 1, 1);
INSERT INTO employees (id, fullName, branch_id, manager_id) VALUES (3, "Josh Porter", 2, 1);
INSERT INTO employees (id, fullName, branch_id, manager_id) VALUES (4, "Michael Scott", 3, 2);
INSERT INTO employees (id, fullName, branch_id, manager_id) VALUES (5, "Stanley Hudson", 3, 4);
INSERT INTO employees (id, fullName, branch_id, manager_id) VALUES (6, "Phyllis Vance", 3, 4);
INSERT INTO employees (id, fullName, branch_id, manager_id) VALUES (7, "Meridith Palmer", 3, 4);

describe branches;

SELECT * FROM employees NATURAL JOIN branches;
#SELECT employees.id AS Employee_ID, employees.fullName AS Name, branches.branchName AS Branch FROM employees INNER JOIN branches ON employees.id = branches.manager_id; 




