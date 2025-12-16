-- the difference between super key and candidate key is that super key can also have 
-- non unique attribute(but indierctly unique) but candidate key must include unique attributes 

-- Example:Here name can also says that super key

CREATE TABLE Students(
    -- Super Key (Minimal, Unique)
    StudentID INT PRIMARY KEY,
    -- Another Super Key (Unique constraint) 
    Email VARCHAR(100) UNIQUE,
    -- Another Super Key (Unique constraint)
    Phone_Number VARCHAR(15) UNIQUE, 
    Name VARCHAR(50),
    Age INT
);

CREATE TABLE Enrollments(
    StudentID INT,
    CourseID INT,
    EnrollmentDate DATE,
    -- Composite Primary Key (Super Key)
    PRIMARY KEY (StudentID, CourseID),
    -- Another Super Key
    UNIQUE (StudentID, EnrollmentDate)  
);