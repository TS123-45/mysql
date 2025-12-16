-- Candidate keys are the possible unique identifiers of a table. 
-- One candidate key is chosen as the primary key, and the remaining candidate keys become unique keys

CREATE TABLE Students (
    Student_ID INT,  
    Email VARCHAR(100) NOT NULL,  
    Phone_Number VARCHAR(15) NOT NULL,  
    Name VARCHAR(50),
    Age INT,
    -- Chosen Candidate Key (Primary Key)
    PRIMARY KEY (Student_ID), 
    -- Another Candidate Key       
    UNIQUE (Email), 
    -- Another Candidate Key                  
    UNIQUE (Phone_Number)              
);

CREATE TABLE Enrollments (
    StudentID INT,
    CourseID INT,
    EnrollmentDate DATE,
    -- Composite Candidate Key
    PRIMARY KEY (Student_ID, Course_ID), 
    -- Another Candidate Key 
    UNIQUE (Student_ID, Enrollment_Date)
);