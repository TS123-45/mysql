-- There is only one primary key in a table if you want one column as unique like primary you can use UNIQUE key 
-- cant be null

create database primarydb;

use primarydb;

CREATE TABLE students(
 StudentId INT PRIMARY KEY,
 Name VARCHAR(10),
 Email VARCHAR(10),
 Age INT
);

CREATE TABLE student(
 StudentId INT,
 Name VARCHAR(10),
 Email VARCHAR(10),
 Age INT,
 PRIMARY KEY(StudentId)
);

CREATE TABLE Enrollments (
    StudentID INT,
    CourseID INT,
    EnrollmentDate DATE,
    -- Composite Primary Key
    PRIMARY KEY (Student_ID, Course_ID)  
);

INSERT INTO students(StudentId,Name,Email,Age) VALUES(1,'Alice','al@gmail',22);

INSERT INTO students(StudentId,Name,Email,Age) VALUES(2,'stark','stark',25);

INSERT INTO students(StudentId,Name,Email,Age) VALUES(3,'tony','tonym',35);

INSERT INTO students(StudentId,Name,Email,Age) VALUES(4,'bruce','bruc',29);

INSERT INTO students(StudentId,Name,Email,Age) VALUES(5,'banner','bane.com',45);