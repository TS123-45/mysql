CREATE TABLE Students(
    -- Primary Key (Unique & Not Null[but can be 0])
    StudentID INT PRIMARY KEY,
    Email VARCHAR(100) UNIQUE,   
    Phone_Number VARCHAR(15) UNIQUE,
    Name VARCHAR(50),
    Age INT
);

CREATE TABLE Enrollments(
    StudentID INT,
    CourseID INT,
    EnrollmentDate DATE,
    PRIMARY KEY (StudentID, CourseID),
    UNIQUE (StudentID, EnrollmentDate)
);