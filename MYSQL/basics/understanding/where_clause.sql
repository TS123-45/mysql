create database wheredb;
use wheredb;

CREATE TABLE students (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    city VARCHAR(50),
    marks INT
);

INSERT INTO students (name, age, city, marks) VALUES
('Tony', 20, 'Chennai', 88),
('Ravi', 22, 'Delhi', 72),
('Priya', 19, 'Mumbai', 95),
('Karan', 21, 'Chennai', 60),
('Rahul', 23, 'Delhi', 78);

SELECT * FROM students WHERE city = 'Chennai';

SELECT * FROM students WHERE city != 'Delhi';
-- or
SELECT * FROM students WHERE city <> 'Delhi';

SELECT * FROM students WHERE age > 20;

SELECT * FROM students WHERE marks < 80;

SELECT * FROM students WHERE marks >= 75;

SELECT * FROM students WHERE age <= 21;

SELECT * FROM students WHERE city = 'Chennai' AND age > 20;

SELECT * FROM students WHERE city = 'Chennai' OR city = 'Delhi';

-- AND has higher priority than OR
-- first evaluates the parenthesis then move to other  
SELECT * FROM students WHERE (city = 'Chennai' OR city = 'Delhi') AND marks > 70;
 
select * from students where city = 'Chennai' OR (city = 'Delhi' AND marks > 70);

SELECT * FROM students WHERE age BETWEEN 20 AND 22;

SELECT * FROM students WHERE city IN ('Chennai', 'Mumbai');

SELECT * FROM students WHERE city NOT IN ('Delhi');

-- Starts with:
SELECT * FROM students WHERE name LIKE 'T%';

-- Ends with:
SELECT * FROM students WHERE name LIKE '%a';

-- Contains:
SELECT * FROM students WHERE name LIKE '%ri%';

SELECT * FROM students WHERE name LIKE '_a%';

SELECT * FROM students WHERE marks IS NULL;

SELECT * FROM students WHERE marks IS NOT NULL;

drop database wheredb;