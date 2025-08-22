SHOW DATABASES;

CREATE DATABASE Sathyabama;
USE Sathyabama;

CREATE TABLE ECE(
    sid INT,
    sname VARCHAR(30),
    smarks INT
);

CREATE TABLE CSE(
    sid INT,
    sname VARCHAR(30),
    smarks INT,
    classroom INT
);

INSERT INTO CSE (sid, sname, smarks, classroom)
VALUES 
    (1, 'Sri', 85, 401),
    (2, 'Priya', 90, 401),
    (3, 'Abu', 78, 401);

INSERT INTO ECE (sid, sname, smarks)
VALUES 
    (1, 'Sri', 85),
    (2, 'Priya', 90),
    (3, 'Abu', 78);

SHOW TABLES FROM Sathyabama;
DESC ECE;
DESC CSE;

SELECT * FROM CSE;
SELECT * FROM ECE;

ALTER TABLE CSE ADD email VARCHAR(50);
ALTER TABLE CSE MODIFY smarks FLOAT;
ALTER TABLE CSE RENAME COLUMN classroom TO room_no;

UPDATE CSE SET smarks = 95 WHERE sname = 'Priya';
UPDATE CSE SET room_no = 402 WHERE sname = 'Sri';

DELETE FROM CSE WHERE sname = 'Abu';
DELETE FROM ECE;

ALTER TABLE CSE DROP COLUMN email;
DROP TABLE ECE;
