-- The ALTER command in SQL used to modify an existing database object.It allows you to 
-- add, modify, rename, or delete columns,constraints,indexes, triggers, and even entire tables without losing data.

-- Adding a New Column
ALTER TABLE table_name ADD column_name datatype constraints;
ALTER TABLE Students ADD Address VARCHAR(255);

-- Adding Multiple Columns:
ALTER TABLE Students ADD Gender CHAR(1), ADD PhoneNumber VARCHAR(15);

-- Modifying an Existing Column
ALTER TABLE table_name MODIFY column_name new_datatype constraints;
ALTER TABLE Students MODIFY Address VARCHAR(500);

-- Changing a Column’s Default Value:
ALTER TABLE Students ALTER COLUMN EnrollmentDate SET DEFAULT CURRENT_DATE;

-- Renaming a Column
ALTER TABLE table_name RENAME COLUMN old_column_name TO new_column_name;
ALTER TABLE Students RENAME COLUMN Address TO HomeAddress;

-- Dropping (Deleting) a Column
ALTER TABLE table_name DROP COLUMN column_name;
ALTER TABLE Students DROP COLUMN PhoneNumber;

-- Dropping Multiple Columns:
ALTER TABLE Students DROP COLUMN Gender,DROP COLUMN Address;

-- Adding a Constraint
ALTER TABLE Students ADD CONSTRAINT chk_age CHECK (Age >= 18);
ALTER TABLE Students ADD CONSTRAINT unique_email UNIQUE (Email);
ALTER TABLE Courses 
ADD CONSTRAINT fk_student FOREIGN KEY (StudentID) REFERENCES Students(StudentID);

-- Dropping a Constraint
ALTER TABLE Students DROP CONSTRAINT chk_age;

-- Modifying an Existing Constraint
ALTER TABLE Students ALTER COLUMN EnrollmentDate SET DEFAULT '2025-01-01';

-- Removing a Default Value:
ALTER TABLE Students ALTER COLUMN EnrollmentDate DROP DEFAULT;

-- Renaming a Table
ALTER TABLE old_table_name RENAME TO new_table_name;
ALTER TABLE Students RENAME TO Learners;

-- ALTER DATABASE
ALTER DATABASE SchoolDB COLLATE utf8_general_ci;

4. ALTER INDEX – Modifying Indexes
Renaming an Index:
ALTER INDEX idx_student_name RENAME TO idx_name;

Dropping an Index:
ALTER TABLE Students DROP INDEX idx_name;

5. ALTER SCHEMA – Modifying a Schema
Example:
ALTER SCHEMA old_schema_name RENAME TO new_schema_name;

7. ALTER USER – Modifying User Permissions
Example:
ALTER USER 'john'@'localhost' IDENTIFIED BY 'newpassword';
