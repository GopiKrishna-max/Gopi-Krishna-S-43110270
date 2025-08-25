CREATE DATABASE ShopEase;
SHOW DATABASES;
USE ShopEase;

CREATE TABLE dept (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50) NOT NULL,
    dept_details VARCHAR(100) NOT NULL
);

CREATE TABLE item (
    item_id INT PRIMARY KEY,
    item_name VARCHAR(50) NOT NULL,
    dept_id INT,
    FOREIGN KEY (dept_id) REFERENCES dept(dept_id)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);

CREATE TABLE item_price (
    price_id INT PRIMARY KEY,
    item_id INT,
    price DECIMAL(10,2),
    FOREIGN KEY (item_id) REFERENCES item(item_id)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);

SHOW TABLES;

INSERT INTO dept VALUES 
(201, 'stationery', 'Office and study supplies'),
(202, 'toys', 'Kids indoor and outdoor play items'),
(203, 'sports', 'Indoor and outdoor sports gear'),
(204, 'groceries', 'Daily household food and essentials');

INSERT INTO item VALUES
(301, 'Notebook', 201),
(302, 'Pen', 201),
(303, 'Sketchbook', 201),
(304, 'Teddy Bear', 202),
(305, 'Remote Car', 202),
(306, 'Football', 203),
(307, 'Badminton Racket', 203),
(308, 'Rice Bag', 204),
(309, 'Cooking Oil', 204);

INSERT INTO item_price VALUES
(401, 301, 60.00),
(402, 302, 15.00),
(403, 303, 120.00),
(404, 304, 750.00),
(405, 305, 1800.00),
(406, 306, 500.00),
(407, 307, 1200.00),
(408, 308, 1200.00),
(409, 309, 200.00);

SELECT * FROM dept;
SELECT * FROM item;
SELECT * FROM item_price;

DELETE FROM item WHERE item_id=304;

UPDATE item 
SET item_name = 'Basketball', dept_id = 203 
WHERE item_id = 305;

SELECT * FROM item WHERE item_name LIKE 'n%';
SELECT * FROM item WHERE item_name LIKE '%r';
SELECT * FROM item WHERE item_name LIKE '%book%';
SELECT * FROM item WHERE item_name LIKE '_a%';

SELECT item_name AS name, dept_id AS department
FROM item;
SELECT dept_id AS id, dept_name AS name 
FROM dept;

CREATE VIEW item_view AS
SELECT item_name, dept_id
FROM item;
SELECT * FROM item_view;

CREATE OR REPLACE VIEW dept_view AS
SELECT dept_id, dept_name
FROM dept;
SELECT * FROM dept_view;

DROP VIEW item_view;
