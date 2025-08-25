create database College;
show databases;
use College;

create table Student (
   stu_id int not null unique auto_increment,   
   stu_LastName varchar(255) not null,          
   stu_FirstName varchar(255) not null,         
   stu_age int not null,                       
   check (stu_age>=18),
   stu_marks int not null 
);

INSERT INTO Student (stu_LastName, stu_FirstName, stu_age, stu_marks)
VALUES 
('Reddy','Aditya',19,88),
('Sharma','Priya',21,92),
('Kumar','Rahul',20,76),
('Nair','Arjun',22,81),
('Patel','Sneha',19,95);

SELECT * FROM Student;
desc Student;

ALTER TABLE Student
DROP INDEX stu_id,            
ADD PRIMARY KEY (stu_id);    

alter table Student add stu_email varchar(50);

UPDATE Student SET stu_email = 'aditya.reddy@gmail.com' WHERE stu_id = 1;
UPDATE Student SET stu_email = 'priya.sharma@gmail.com' WHERE stu_id = 2;
UPDATE Student SET stu_email = 'rahul.kumar@gmail.com' WHERE stu_id = 3;
UPDATE Student SET stu_email = 'arjun.nair@gmail.com' WHERE stu_id = 4;
UPDATE Student SET stu_email = 'sneha.patel@gmail.com' WHERE stu_id = 5;

desc Student;
SELECT * FROM Student;

SELECT * FROM Student WHERE stu_id = 1;
