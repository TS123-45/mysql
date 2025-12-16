CREATE DATABASE datatype_demo;

USE datatype_demo;

CREATE TABLE employee_details (
    emp_id INT AUTO_INCREMENT PRIMARY KEY,      -- INT
    emp_code SMALLINT,                           -- SMALLINT
    name VARCHAR(100),                          -- VARCHAR
    gen CHAR(1),                             -- char
    age TINYINT,                                 -- TINYINT
    experience_years INT,                        -- INT
    salary DOUBLE,                               -- DOUBLE
    bonus DECIMAL(10,2),                         -- DECIMAL
    is_active BOOLEAN,                           -- BOOLEAN (BOOL)
    gender ENUM('Male','Female','Other'),        -- ENUM
    skills SET('C','Java','Python','JS','SQL'),  -- SET
    joining_date DATE,                           -- DATE
    login_time TIME,                             -- TIME
    created_at DATETIME,                         -- DATETIME
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP 
                 ON UPDATE CURRENT_TIMESTAMP,   -- TIMESTAMP
    remarks TEXT                                 -- TEXT
);

INSERT INTO employee_details (
    emp_code,
    name,
    gen,
    age,
    experience_years,
    salary,
    bonus,
    is_active,
    gender,
    skills,
    joining_date,
    login_time,
    created_at,
    remarks
)
VALUES
(101, 'Tony','m', 22, 1, 45000.75, 5000.50, TRUE, 'Male', 'C,Java,SQL',
 '2023-06-15', '09:30:00', '2024-01-10 10:15:00', 'Good performer'),

(102, 'Ravi','m', 28, 5, 75000.00, 10000.00, TRUE, 'Male', 'Python,JS',
 '2020-08-20', '09:45:00', '2024-02-05 11:20:00', 'Team lead'),

(103, 'Priya','f', 25, 3, 62000.25, 8000.00, FALSE, 'Female', 'Java,SQL',
 '2021-03-12', '10:00:00', '2024-03-01 09:10:00', 'On leave');

SELECT * FROM employee_details;

drop database datatype_demo;