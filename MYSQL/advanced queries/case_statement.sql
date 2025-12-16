create database casedb;

use casedb;

CREATE TABLE students (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50),
    marks INT,
    city VARCHAR(50)
);

INSERT INTO students (name, marks, city) VALUES
('Tony', 92, 'Chennai'),
('Ravi', 76, 'Delhi'),
('Kiran', 55, 'Mumbai'),
('Arun', 34, 'Chennai'),
('Priya', 88, 'Delhi');

-- if (marks >= 90) {
--     result = "A Grade";
-- }
SELECT name,marks,
    CASE 
        WHEN marks >= 90 THEN 'A Grade'
    END 
    AS result
FROM students;


-- if (marks >= 90) {
--     result = "A Grade";
-- } else {
--     result = "Not A Grade";
-- }
SELECT name,marks,
    CASE 
        WHEN marks >= 90 THEN 'A Grade'
        ELSE 'Not A Grade'
    END 
    AS result
FROM students;

-- if (marks >= 90) {
--     result = "A Grade";
-- }
-- else if (marks >= 80) {
--     result = "B Grade";
-- }
-- else if (marks >= 70) {
--     result = "C Grade";
-- }
-- else {
--     result = "Fail";
-- }
SELECT name,marks,
    CASE 
        WHEN marks >= 90 THEN 'A Grade' -- result = a grade 
        WHEN marks >= 80 THEN 'B Grade' -- result = b grade 
        WHEN marks >= 70 THEN 'C Grade' -- result = c grade 
        ELSE 'Fail' -- result = fail 
    END 
    AS result
FROM students;

SELECT name,marks,
    CASE
        WHEN marks >= 90 THEN 'Excellent'
        WHEN marks >= 75 THEN 'Good'
        WHEN marks >= 50 THEN 'Average'
        ELSE 'Poor'
    END 
    AS performance
FROM students;

SELECT name, marks
FROM students
ORDER BY
    CASE
        WHEN marks >= 90 THEN 1
        WHEN marks >= 75 THEN 2
        WHEN marks >= 50 THEN 3
        ELSE 4
    END;

-- the below conditions are perform each and every single row linearly one by one
SELECT * FROM students WHERE 
    CASE 
        WHEN city = 'Chennai' THEN marks > 60
        ELSE marks > 80
    END;

SELECT
    SUM(CASE WHEN marks >= 90 THEN 1 ELSE 0 END) AS excellent,
    SUM(CASE WHEN marks BETWEEN 75 AND 89 THEN 1 ELSE 0 END) AS good,
    SUM(CASE WHEN marks BETWEEN 50 AND 74 THEN 1 ELSE 0 END) AS average,
    SUM(CASE WHEN marks < 50 THEN 1 ELSE 0 END) AS poor
FROM students;

SELECT name,city,
    CASE
        WHEN city IS NULL THEN 'Unknown City'
        ELSE city
    END 
    AS display_city
FROM students;

UPDATE students SET marks = marks +
    CASE
        WHEN marks < 50 THEN 10
        WHEN marks BETWEEN 50 AND 80 THEN 5
        ELSE 0
    END;

SELECT
    CASE
        WHEN marks >= 90 THEN 'Excellent'
        WHEN marks >= 75 THEN 'Good'
        WHEN marks >= 50 THEN 'Average'
        ELSE 'Poor'
    END 
    AS performance_group,COUNT(*) AS total_students FROM students GROUP BY performance_group;

SELECT name, marks, city,
    CASE
        WHEN city = 'Chennai' AND marks >= 80 THEN 'Top Chennai Student'
        WHEN city = 'Delhi' AND marks >= 80 THEN 'Top Delhi Student'
        ELSE 'Regular Student'
    END AS 
    category FROM students;

SELECT name,marks,marks + 
    CASE
        WHEN marks < 40 THEN 10
        WHEN marks BETWEEN 40 AND 80 THEN 5
        ELSE 2
    END 
    AS final_marks
FROM students;

SELECT name, marks,
    CASE
        WHEN marks >= 50 THEN 
            CASE 
                WHEN marks >= 90 THEN 'Excellent'
                ELSE 'Pass'
            END
        ELSE 'Fail'
    END AS 
    result FROM students;
    
drop database casedb;    