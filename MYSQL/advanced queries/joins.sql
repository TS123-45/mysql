create database joinsdb;

use joinsdb;

CREATE TABLE students (
  student_id INT PRIMARY KEY,
  name VARCHAR(50),
  class VARCHAR(10)
);

CREATE TABLE marks (
  mark_id INT PRIMARY KEY,
  student_id INT,
  subject VARCHAR(50),
  score INT
);

INSERT INTO students VALUES
(1, 'Tony', '10A'),
(2, 'Ravi', '10A'),
(3, 'Priya', '10B'),
(4, 'Kumar', '10B');

CREATE TABLE employees (
  id INT PRIMARY KEY,
  name VARCHAR(50),
  manager_id INT
);

INSERT INTO employees (id, name, manager_id) VALUES
(1, 'CEO', NULL),
(2, 'Manager A', 1),
(3, 'Manager B', 1),
(4, 'Employee 1', 2),
(5, 'Employee 2', 2),
(6, 'Employee 3', 3);

INSERT INTO marks VALUES
(101, 1, 'Math', 95),
(102, 2, 'Math', 88),
(103, 3, 'Math', 45);

SELECT s.student_id, s.name, m.subject, m.score FROM students s
INNER JOIN marks m ON s.student_id = m.student_id;

SELECT s.student_id, s.name, m.subject, m.score FROM students s
LEFT JOIN marks m ON s.student_id = m.student_id;

SELECT s.student_id, s.name, m.subject, m.score FROM students s
RIGHT JOIN marks m ON s.student_id = m.student_id;

SELECT s.student_id, s.name, m.subject, m.score
FROM students s
LEFT JOIN marks m
ON s.student_id = m.student_id
UNION
SELECT s.student_id, s.name, m.subject, m.score
FROM students s
RIGHT JOIN marks m
ON s.student_id = m.student_id;

SELECT e.name AS Employee, m.name AS Manager FROM employees e
LEFT JOIN employees m ON e.manager_id = m.id;