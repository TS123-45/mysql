create database orderbydb;

use orderbydb;

CREATE TABLE students (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(50),
  city VARCHAR(50),
  marks INT
);

INSERT INTO students (name, city, marks) VALUES
('Tony', 'Chennai', 85),
('Ravi', 'Delhi', 72),
('Priya', 'Mumbai', 90),
('Arun', 'Chennai', 60),
('Sneha', 'Delhi', 95),
('Vijay', 'Mumbai', 40),
('Karthik', 'Chennai', 75),
('Meena', 'Delhi', 55);

SELECT * FROM students ORDER BY marks;

SELECT * FROM students ORDER BY marks DESC;

SELECT * FROM students ORDER BY name ASC;

SELECT * FROM students ORDER BY name DESC;

-- ORDER BY multiple columns
-- Sort by city first, then marks within each city.
SELECT * FROM students ORDER BY city ASC, marks DESC;

SELECT * FROM students WHERE city = 'Chennai' ORDER BY marks DESC;

SELECT * FROM students ORDER BY marks DESC LIMIT 3;

SELECT * FROM students WHERE city = 'Chennai' OR marks > 80 ORDER BY marks DESC, name ASC;

drop database orderbydb;