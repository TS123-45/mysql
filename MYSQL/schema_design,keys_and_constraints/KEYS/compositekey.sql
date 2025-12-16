CREATE TABLE Enrollments (
    Student_ID INT,
    Course_ID INT,
    Enrollment_Date DATE,
    -- Composite Primary Key
    PRIMARY KEY (Student_ID, Course_ID)
);

//valid data
INSERT INTO Enrollments (Student_ID, Course_ID, Enrollment_Date) 
VALUES (1, 101, '2025-03-12');

INSERT INTO Enrollments (Student_ID, Course_ID, Enrollment_Date) 
VALUES (1, 102, '2025-03-13');

INSERT INTO Enrollments (Student_ID, Course_ID, Enrollment_Date) 
VALUES (2, 101, '2025-03-14');

//Invalid data
INSERT INTO Enrollments (Student_ID, Course_ID, Enrollment_Date) 
VALUES (1, 101, '2025-03-12');  -- Works

INSERT INTO Enrollments (Student_ID, Course_ID, Enrollment_Date) 
VALUES (1, 102, '2025-03-13');  -- Works (Different Course_ID)

INSERT INTO Enrollments (Student_ID, Course_ID, Enrollment_Date) 
VALUES (2, 101, '2025-03-14');  -- Works (Different Student_ID)

INSERT INTO Enrollments (Student_ID, Course_ID, Enrollment_Date) 
VALUES (1, 101, '2025-03-15');

//composite foreign key
CREATE TABLE Enrollments (
    Student_ID INT,
    Course_ID INT,
    Enrollment_Date DATE,
    PRIMARY KEY (Student_ID, Course_ID),
    FOREIGN KEY (Student_ID) REFERENCES Students(Student_ID),
    FOREIGN KEY (Course_ID) REFERENCES Courses(Course_ID)
);