-- 1. Syntax of INSERT Command
INSERT INTO table_name (column1, column2, column3) VALUES (value1, value2, value3);

INSERT INTO students VALUES (1, 'John Doe', 20, 'Computer Science');

INSERT INTO students (id, name) VALUES (2, 'Jane Smith');
-- Here, age and department will be NULL (if no default is specified).

INSERT INTO students (id, name, age, department) 
VALUES (3, 'Alice Brown', 22, 'Mathematics'),(4, 'Bob Johnson', 19, 'Physics');

--  Inserting Data from Another Table
INSERT INTO alumni (id, name, graduation_year) SELECT id, name, 2024 FROM students WHERE age >= 22;

-- Inserting Data with Default Values
INSERT INTO students (id, name, age) VALUES (5, 'Charlie Wilson', DEFAULT);

-- Using INSERT IGNORE Prevents insertion errors when duplicate primary keys exist:
INSERT IGNORE INTO students (id, name, age, department) VALUES (1, 'John Doe', 20, 'Computer Science');
-- If id = 1 already exists, the statement is ignored.

-- If a duplicate primary key exists, update instead of inserting:
INSERT INTO students (id, name, age) VALUES (1, 'John Doe', 21) ON DUPLICATE KEY UPDATE age = VALUES(age);
-- If id = 1 already exists, the age will be updated instead of inserting a new row.
