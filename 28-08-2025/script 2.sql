CREATE DATABASE college_erp;
USE college_erp;

CREATE TABLE competition_results (
    id INT,
    participant_name VARCHAR(25),
    competition VARCHAR(40)
);

INSERT INTO competition_results VALUES
(201, 'Arjun', 'Coding Contest Winner'),
(202, 'Meera', 'Math Olympiad Runner-up'),
(203, 'Sanjay', 'Chess Champion'),
(204, 'Diya', 'Science Fair 2nd Runner-up'),
(205, 'Anjali', 'Quiz Winner'),
(206, 'Vikram', 'Football Runner-up'),
(207, 'Rohit', 'Hackathon Winner'),
(208, 'Pooja', 'Badminton Runner-up'),
(209, 'Naveen', 'Robotics Runner-up'),
(210, 'Ishita', 'Robotics Winner');

SELECT * FROM competition_results;

CREATE TABLE student_list (
    id INT,
    student_name VARCHAR(25)
);

INSERT INTO student_list VALUES
(205, 'Anjali'),(3001, 'Harish'),(3002, 'Keerthi'),(201, 'Arjun'),(3003, 'Siddharth'),(3004, 'Varun'),(3005, 'Priya'),(3006, 'Deepak'),(3007, 'Krishna'),
(3008, 'Shalini');

SELECT * FROM student_list;

SELECT * 
FROM student_list 
WHERE id = (SELECT id FROM competition_results WHERE id = 205);

SELECT * 
FROM student_list 
WHERE id = (SELECT id FROM competition_results WHERE participant_name = 'Arjun');

SELECT * 
FROM competition_results
WHERE id = (SELECT id FROM student_list WHERE id = 201);

SELECT * 
FROM competition_results
WHERE id = (SELECT id FROM student_list WHERE student_name = 'Anjali');
