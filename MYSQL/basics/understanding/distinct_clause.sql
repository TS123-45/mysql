create database distinctdb;

use distinctdb;

CREATE TABLE employees (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50),
    department VARCHAR(50),
    city VARCHAR(50),
    salary INT
);

INSERT INTO employees (name, department, city, salary) VALUES
('Arun', 'IT', 'Chennai', 50000),
('Bala', 'HR', 'Chennai', 40000),
('Arun', 'IT', 'Bangalore', 52000),
('Charan', 'Sales', 'Mumbai', 45000),
('Deepa', 'HR', 'Mumbai', 42000),
('Arun', 'IT', 'Chennai', 50000),
('Elango', 'Sales', 'Chennai', 46000),
('Bala', 'HR', 'Chennai', 40000),
('Farook', 'IT', 'Bangalore', 53000),
('Arun', 'IT', 'Chennai', 50000);

SELECT DISTINCT city FROM employees;

SELECT DISTINCT name, city FROM employees;

SELECT DISTINCT department FROM employees WHERE city = 'Chennai';

SELECT DISTINCT city FROM employees ORDER BY city ASC;

SELECT DISTINCT name FROM employees LIMIT 5;

SELECT DISTINCT name FROM employees WHERE name LIKE 'A%';

SELECT DISTINCT city FROM employees WHERE city IN ('Chennai', 'Mumbai');

SELECT DISTINCT department FROM employees WHERE department IS NOT NULL;

-- distinct not needed when grouping — same effect
SELECT department FROM employees GROUP BY department;

-- distinct with aggregate functions
SELECT COUNT(DISTINCT name) AS unique_names FROM employees;
-- Count only unique names

drop database distinctdb;
