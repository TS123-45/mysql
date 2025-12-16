-- SYNTAX:CREATE DATABASE database_name;
CREATE DATABASE SchoolDB;
CREATE DATABASE IF NOT EXISTS SchoolDB;

-- SYNTAX
CREATE TABLE table_name (
    column1 datatype constraints,
    column2 datatype constraints,
    ...
);

CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    Name VARCHAR(50) NOT NULL,
    Age INT CHECK (Age >= 18),
    Email VARCHAR(100) UNIQUE,
    EnrollmentDate DATE DEFAULT CURRENT_DATE
);

CREATE VIEW view_name AS
SELECT column1, column2 FROM table_name WHERE condition;
eg:CREATE VIEW StudentView AS
SELECT StudentID, Name FROM Students WHERE Age >= 18;

4.SYNTAX:CREATE INDEX index_name ON table_name(column_name);
eg:*CREATE INDEX idx_student_name ON Students(Name);
   *CREATE UNIQUE INDEX idx_unique_email ON Students(Email);

5.SYNTAX:CREATE SCHEMA schema_name;

eg:*CREATE SCHEMA SchoolSchema;

   *CREATE TABLE SchoolSchema.Teachers (
    TeacherID INT PRIMARY KEY,
    Name VARCHAR(50)
);

6.SYNTAX:CREATE TRIGGER trigger_name
BEFORE | AFTER INSERT | UPDATE | DELETE ON table_name
FOR EACH ROW
BEGIN
    -- SQL Statements
END;
eg:CREATE TRIGGER before_student_insert
BEFORE INSERT ON Students
FOR EACH ROW
BEGIN
    SET NEW.EnrollmentDate = CURRENT_DATE;
END;

7.SYNTAX:CREATE PROCEDURE procedure_name(parameters)
BEGIN
    -- SQL Statements
END;
eg:CREATE PROCEDURE GetStudent(IN student_id INT)
BEGIN
    SELECT * FROM Students WHERE StudentID = student_id;
END;

8.SYNTAX:CREATE FUNCTION function_name(parameters) RETURNS datatype
BEGIN
    -- SQL Statements
END;
eg:CREATE FUNCTION GetAge(student_id INT) RETURNS INT
BEGIN
    DECLARE student_age INT;
    SELECT Age INTO student_age FROM Students WHERE StudentID = student_id;
    RETURN student_age;
END;

9.SYNTAX:CREATE USER 'username'@'host' IDENTIFIED BY 'password';
eg:CREATE USER 'john'@'localhost' IDENTIFIED BY 'securepass';
GRANT ALL PRIVILEGES ON SchoolDB.* TO 'john'@'localhost';
