CREATE TABLE Employees (
    Employee_ID INT AUTO_INCREMENT PRIMARY KEY, -- surrogate key
    Name VARCHAR(50),
    Email VARCHAR(100) UNIQUE,
    Department VARCHAR(50)
);

INSERT INTO Employees (Name, Email, Department) 
VALUES ('Alice', 'alice@example.com', 'HR');

INSERT INTO Employees (Name, Email, Department) 
VALUES ('Bob', 'bob@example.com', 'IT');

CREATE TABLE Employees (
    Employee_ID CHAR(36) PRIMARY KEY DEFAULT (UUID()), -- surrogate key
    Name VARCHAR(50),
    Email VARCHAR(100) UNIQUE,
    Department VARCHAR(50)
);

INSERT INTO Employees (Employee_ID, Name, Email, Department) 
VALUES (UUID(), 'Alice', 'alice@example.com', 'HR');


-- UUID = Universally Unique Identifier
-- A 128-bit number designed to be globally unique.

-- Example UUID:
-- 550e8400-e29b-41d4-a716-446655440000
-- 32 hex characters
-- Written in 5 groups: 8-4-4-4-12


--  Feature      UUID             AUTO_INCREMENT     
--  Uniqueness   Global            Local
--  Generated    App or DB         DB only            
--  Order        Random            Sequential         
--  Size         Large (16 bytes)  Small (4–8 bytes)  
--  Performance  Slower            Faster             
--  Guessable     No             ️   Yes             
