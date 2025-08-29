CREATE DATABASE placementlist;
USE placementlist;

CREATE TABLE employee (
    emp_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    dept_name VARCHAR(50),
    salary DECIMAL(10,2)
);

CREATE TABLE dept_info (
    dept_name VARCHAR(50) PRIMARY KEY,
    location VARCHAR(50),
    manager VARCHAR(50)
);

INSERT INTO employee VALUES
(101, 'Karan', 'Patel', 'sales', 75000.00),
(102, 'Nisha', 'Reddy', 'hr', 82000.00),
(103, 'Rohan', 'Shah', 'it', 96000.00),
(104, 'Anita', 'Verma', 'finance', 105000.00);

INSERT INTO dept_info VALUES
('sales', 'pune', 'amit'),
('hr', 'delhi', 'priya'),
('it', 'hyderabad', 'sunil'),
('finance', 'mumbai', 'neha');

SELECT dept_name FROM employee
UNION
SELECT dept_name FROM dept_info;

SELECT dept_name FROM employee
UNION ALL
SELECT dept_name FROM dept_info;

SELECT first_name AS name FROM employee
UNION
SELECT manager AS name FROM dept_info;

SELECT dept_name FROM employee
WHERE dept_name NOT IN (SELECT dept_name FROM dept_info);

SELECT employee.first_name, employee.last_name, employee.dept_name, 
       dept_info.location, dept_info.manager
FROM employee
JOIN dept_info 
ON employee.dept_name = dept_info.dept_name;

SELECT employee.first_name, employee.last_name, employee.dept_name, 
       dept_info.location, dept_info.manager
FROM employee
INNER JOIN dept_info
ON employee.dept_name = dept_info.dept_name;

SELECT employee.first_name, employee.dept_name, dept_info.location
FROM employee
LEFT JOIN dept_info
ON employee.dept_name = dept_info.dept_name;

SELECT dept_info.dept_name, dept_info.location, employee.first_name
FROM employee
RIGHT JOIN dept_info
ON employee.dept_name = dept_info.dept_name;
