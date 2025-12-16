-- The SELECT command retrieves data from one or more tables in a database.

-- Syntax of SELECT Command
-- SELECT column1, column2, ... FROM table_name WHERE condition;

SELECT * FROM students;

SELECT name, age FROM students;

SELECT * FROM students WHERE age > 20;

SELECT DISTINCT department FROM students;

SELECT name, age FROM students ORDER BY age DESC;

SELECT name, age FROM students ORDER BY age ASC;

SELECT * FROM students LIMIT 5;

SELECT * FROM students LIMIT 5 OFFSET 10;

SELECT * FROM students WHERE age > 18 AND department = 'Computer Science';

SELECT * FROM students WHERE age < 18 OR department = 'Mathematics';

SELECT * FROM students WHERE NOT age = 20;

SELECT * FROM students WHERE age BETWEEN 18 AND 25;

SELECT * FROM students WHERE department IN ('Mathematics', 'Physics', 'Chemistry');

SELECT * FROM students WHERE name LIKE 'J%';

SELECT * FROM students WHERE name LIKE '%son';

SELECT * FROM students WHERE name LIKE '%do%';

SELECT * FROM students WHERE department IS NULL;

SELECT * FROM students WHERE department IS NOT NULL;

SELECT COUNT(*) FROM students;
SELECT COUNT(1) FROM students;

SELECT COUNT(department) FROM students; -- does not count null values
SELECT COUNT(distinct department) FROM students; -- does not count both null and duplicate values

SELECT MAX(age) FROM students;

SELECT MIN(age) FROM students;

SELECT SUM(salary) FROM employees;

SELECT AVG(salary) FROM employees;

SELECT department, COUNT(*) FROM students GROUP BY department;

SELECT department, COUNT(*)  FROM students  GROUP BY department HAVING COUNT(*) > 5;

SELECT s.name, e.course_name  FROM students INNER JOIN enrollments ON s.id = e.student_id;

SELECT s.name, e.course_id  FROM students LEFT JOIN enrollments ON s.id = e.student_id;

SELECT s.name, e.course_id  FROM students RIGHT JOIN enrollments ON s.id = e.student_id;
