create database aggdb;

use aggdb;

CREATE TABLE students (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(50),
  city VARCHAR(50),
  marks INT
);

INSERT INTO students (name, city, marks) VALUES
('Tony', 'Chennai', 85),
('Ravi', 'Chennai', 90),
('Priya', 'Delhi', 78),
('Arun', 'Mumbai', 65),
('Sneha', 'Delhi', 92),
('Mohan', 'Chennai', 70),
('Kiran', 'Bangalore', 88);

CREATE TABLE employees (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(50),
  salary INT
);

INSERT INTO employees (name, salary) VALUES
('Ravi', 50000),
('Priya', 60000),
('Arun', 45000),
('Sneha', 75000);

SELECT COUNT(*) FROM students;

SELECT COUNT(*) FROM students WHERE city = 'Chennai';

SELECT SUM(marks) FROM students;

SELECT SUM(marks) FROM students WHERE city = 'Chennai';

SELECT AVG(marks) FROM students;

SELECT AVG(marks) FROM students WHERE city = 'Delhi';

SELECT MIN(marks) FROM students;

SELECT MAX(marks) FROM students;

SELECT COUNT(DISTINCT city) FROM students;

SELECT AVG(marks) * 1.0 AS avg_percentage FROM students;

SELECT SUM(salary * 0.9) AS total_after_tax FROM employees;

-- Aggregation functions always return a single value unless used with GROUP BY.

drop database aggdb;