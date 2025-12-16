CREATE DATABASE uniondb;

USE uniondb;

CREATE TABLE students_chennai (
  id INT,
  name VARCHAR(50),
  city VARCHAR(50)
);

CREATE TABLE students_delhi (
  id INT,
  name VARCHAR(50),
  city VARCHAR(50)
);

INSERT INTO students_chennai VALUES
(1, 'Arun', 'Chennai'),
(2, 'Bala', 'Chennai'),
(3, 'Charan', 'Chennai');

INSERT INTO students_delhi VALUES
(3, 'Charan', 'Delhi'),
(4, 'Deepak', 'Delhi'),
(5, 'Esha', 'Delhi');

SELECT id, name FROM students_chennai
UNION
SELECT id, name FROM students_delhi;

SELECT id, name FROM students_chennai
UNION ALL
SELECT id, name FROM students_delhi;

SELECT id, name FROM students_chennai WHERE id <= 2
UNION
SELECT id, name FROM students_delhi WHERE id >= 4;

DROP DATABASE uniondb;