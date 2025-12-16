-- Alternate key=candidate key - primary key

CREATE TABLE Students (
    -- Primary Key (Chosen Candidate Key)
    Student_ID INT PRIMARY KEY, 
    -- Candidate Key (Alternate Key)
    Email VARCHAR(100) UNIQUE,  
    -- Candidate Key (Alternate Key)
    Phone_Number VARCHAR(15) UNIQUE, 
    Name VARCHAR(50),
    Age INT
);

-- valid data
INSERT INTO Students (Student_ID, Email, Phone_Number, Name, Age) 
VALUES (1, 'alice@example.com', '9876543210', 'Alice', 22);

INSERT INTO Students (Student_ID, Email, Phone_Number, Name, Age) 
VALUES (2, 'bob@example.com', '8765432109', 'Bob', 24);

-- Invalid data
INSERT INTO Students (Student_ID, Email, Phone_Number, Name, Age) 
VALUES (1, 'alice@example.com', '9876543210', 'Alice', 22);

INSERT INTO Students (Student_ID, Email, Phone_Number, Name, Age) 
VALUES (2, 'bob@example.com', '8765432109', 'Bob', 24);

INSERT INTO Students (Student_ID, Email, Phone_Number, Name, Age) 
VALUES (3, 'alice@example.com', '7654321098', 'Charlie', 21);  