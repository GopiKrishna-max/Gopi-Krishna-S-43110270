
CREATE DATABASE place;
USE place;

CREATE TABLE iq (
    iname VARCHAR(50),
    i_id INT,
    i_address VARCHAR(100),
    ph_no BIGINT,
    email VARCHAR(50)
);
DESC iq;

CREATE TABLE cse (
    cse_name VARCHAR(100),
    cse_id INT,
    cse_admin_no INT,
    contact_no BIGINT,
    exam_no INT
);
DESC cse;

INSERT INTO cse (cse_name, cse_id, cse_admin_no, contact_no, exam_no)
VALUES 
    ('Ravi', 21, 201, 9876543210, 8765),
    ('Meena', 22, 202, 9876501234, 6543),
    ('Suresh', 23, 203, 9876512345, 7654),
    ('Lakshmi', 24, 204, 9876523456, 9876);

SELECT * FROM cse;

ALTER TABLE cse ADD email VARCHAR(50);
ALTER TABLE cse ADD sno INT NOT NULL;
ALTER TABLE cse ADD slocation VARCHAR(50) DEFAULT 'India';


UPDATE cse SET contact_no = 0 WHERE cse_name = 'Ravi';
UPDATE cse SET slocation = 'Nepal' WHERE cse_name = 'Meena';
UPDATE cse SET sno = 5 WHERE cse_name = 'Suresh';
UPDATE cse SET cse_name = 'Anjali' WHERE cse_name = 'Lakshmi';


INSERT INTO cse VALUES 
    ('Vikram', 25, 205, 1234567890, 1111, 'vikram@mail.com', 6, 'India'),
    ('Anitha', 26, 206, 9999999999, 2222, 'anitha@mail.com', 7, 'India');


START TRANSACTION;
INSERT INTO cse VALUES ('Rahul', 27, 207, 9123456789, 3333, 'rahul@mail.com', 8, 'India');
SAVEPOINT A;

INSERT INTO cse VALUES ('Divya', 28, 208, 9345678901, 4444, 'divya@mail.com', 9, 'India');
SAVEPOINT B;

ROLLBACK TO A;
SELECT * FROM cse;

ROLLBACK TO B;
SELECT * FROM cse;

DELETE FROM cse WHERE cse_name = 'Divya';
DELETE FROM cse WHERE cse_name = 'Rahul';

CREATE DATABASE ORG456;
USE ORG456;

CREATE TABLE Worker (
    WORKER_ID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    FIRST_NAME CHAR(25),
    LAST_NAME CHAR(25),
    SALARY INT(15),
    JOINING_DATE DATETIME,
    DEPARTMENT CHAR(25)
);

INSERT INTO Worker (WORKER_ID, FIRST_NAME, LAST_NAME, SALARY, JOINING_DATE, DEPARTMENT) VALUES
    (101, 'Arjun', 'Mehta', 120000, '2020-02-14 09:00:00', 'HR'),
    (102, 'Kavya', 'Reddy', 95000, '2019-06-11 09:00:00', 'Admin'),
    (103, 'Rohit', 'Sharma', 310000, '2021-02-20 09:00:00', 'HR'),
    (104, 'Sneha', 'Kapoor', 470000, '2022-02-20 09:00:00', 'Admin'),
    (105, 'Manish', 'Gupta', 520000, '2018-06-11 09:00:00', 'Admin'),
    (106, 'Priya', 'Nair', 230000, '2020-06-11 09:00:00', 'Finance'),
    (107, 'Karan', 'Patel', 80000, '2019-01-20 09:00:00', 'Finance'),
    (108, 'Anjali', 'Joshi', 95000, '2021-04-11 09:00:00', 'Admin');

SELECT * FROM Worker;

DELETE FROM Worker WHERE WORKER_ID = 101;
DELETE FROM Worker WHERE WORKER_ID = 103;

TRUNCATE TABLE Worker;

START TRANSACTION;
DELETE FROM Worker WHERE WORKER_ID = 102;
SAVEPOINT A;
ROLLBACK TO A;

DESC Worker;
