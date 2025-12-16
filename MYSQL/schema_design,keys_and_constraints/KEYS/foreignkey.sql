-- Creating the 'Students' table (Primary Key: Student_ID)
CREATE TABLE Students(
    StudentID INT PRIMARY KEY,
    Name VARCHAR(50),
    Email VARCHAR(100) UNIQUE
);

-- Creating the 'Enrollments' table (Foreign Key: Student_ID)
CREATE TABLE Enrollments(
    EnrollmentID INT PRIMARY KEY,
    -- Foreign Key references Students table
    StudentID INT,  
    CourseName VARCHAR(100),
    EnrollmentDate DATE,
    FOREIGN KEY (StudentID) REFERENCES Students(StudentID)  
);

-- valid data
INSERT INTO Students (Student_ID, Name, Email) VALUES (1, 'Alice', 'alice@example.com');

INSERT INTO Enrollments (Enrollment_ID, Student_ID, Course_Name, Enrollment_Date) 
VALUES (101, 1, 'Database Management', '2025-03-12'); 

-- Invalid data 
INSERT INTO Students (Student_ID, Name, Email) VALUES (1, 'Alice', 'alice@example.com');

INSERT INTO Enrollments (Enrollment_ID, Student_ID, Course_Name, Enrollment_Date)  
VALUES (102, 2, 'Computer Networks', '2025-03-12');  

CREATE TABLE Enrollments (
    Enrollment_ID INT PRIMARY KEY,
    Student_ID INT,
    Course_Name VARCHAR(100),
    Enrollment_Date DATE,
    FOREIGN KEY (Student_ID) REFERENCES Students(Student_ID) ON DELETE CASCADE
);

-- If a student is deleted from Students table, all their enrollments in Enrollments table are automatically deleted.