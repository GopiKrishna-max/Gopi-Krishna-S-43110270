SHOW DATABASES;

USE hcl;

CREATE TABLE Worker (
    WORKER_ID INT PRIMARY KEY,
    FIRST_NAME VARCHAR(50) NOT NULL,
    LAST_NAME VARCHAR(50) NOT NULL,
    DEPARTMENT VARCHAR(50) NOT NULL,
    SALARY DECIMAL(10,2) NOT NULL
);

INSERT INTO Worker VALUES
(1, 'Rakesh', 'Sharma', 'Sales', 85000.00),
(2, 'Meera', 'Nair', 'Accounts', 125000.00),
(3, 'Suresh', 'Patel', 'Support', 99000.00),
(4, 'Divya', 'Kapoor', 'Research', 110000.00),
(5, 'Ajay', 'Mishra', 'Sales', 72000.00),
(6, 'Neha', 'Gupta', 'Support', 115000.00),
(7, 'Arvind', 'Singh', 'Operations', 93000.00),
(8, 'Pooja', 'Rao', 'Accounts', 135000.00),
(9, 'Vihan', 'Sharma', 'Sales', 210000.00);

SELECT * FROM Worker;

SELECT COUNT(*) AS EMP_COUNT
FROM Worker
WHERE DEPARTMENT NOT IN ('Sales','Support');

SELECT DEPARTMENT, MAX(SALARY) AS HIGHEST_SALARY
FROM Worker
GROUP BY DEPARTMENT
ORDER BY DEPARTMENT;

SELECT *
FROM Worker
WHERE DEPARTMENT = 'Sales'
ORDER BY SALARY ASC;

SELECT *
FROM Worker
ORDER BY WORKER_ID
LIMIT 2;

SELECT *
FROM Worker
ORDER BY WORKER_ID
LIMIT 2 OFFSET 4;

SELECT *
FROM (
    SELECT w.*, ROW_NUMBER() OVER (ORDER BY WORKER_ID) AS rn
    FROM Worker w
) AS temp
WHERE rn > 5;

SELECT lower(First_name) FROM worker;

UPDATE worker
SET first_name = UPPER(first_name),
    last_name = UPPER(last_name);

select department,count(department) from worker
group by department
having count(department)>=2;

select department,sum(salary) from worker
group by department
having sum(salary)>200000;

select department,avg(salary) from worker
group by department
having avg(salary)>100000;

select department,max(salary) from worker
group by department
having max(salary)=110000;

select department,count(department) as emp_count,sum(salary) as total_salary from worker
group by department
having count(department)>1 and sum(salary)>100000;

select department,avg(salary) from worker
group by department
having avg(salary) between 50000 and 200000;




