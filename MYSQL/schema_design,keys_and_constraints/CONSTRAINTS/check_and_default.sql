-- This is CHECK constraint
CREATE TABLE employee (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    age INT,
    salary DECIMAL(10, 2),
    CHECK (age BETWEEN 18 AND 60)
);

INSERT INTO employee (name, age, salary)
VALUES ('Alice', 30, 50000),('Alice', 30, 50000),('Alice', 30, 50000),('Alice', 30, 50000);
  
-- this is DEFAULT constraint 
CREATE TABLE employees (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    age INT,
    salary DECIMAL(10, 2),
    createdat timestamp default current_timestamp
);

INSERT INTO employees (id,name, age, salary)VALUES (101,'Alice', 30, 50000);
INSERT INTO employees (name, age, salary)
VALUES ('Alice', 30, 50000),('Alice', 30, 50000),('Alice', 30, 50000),('Alice', 30, 50000);