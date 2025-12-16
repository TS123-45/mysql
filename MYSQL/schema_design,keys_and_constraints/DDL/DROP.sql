-- The DROP command in SQL is used to permanently delete database objects such as tables, databases, 
-- views, indexes, triggers, schemas, users, and constraints.

-- DROP TABLE
DROP TABLE table_name;
DROP TABLE Students;
DROP TABLE IF EXISTS Students;

-- DROP DATABASE
DROP DATABASE database_name;
DROP DATABASE SchoolDB;
DROP DATABASE IF EXISTS SchoolDB;

-- DROP COLUMN
ALTER TABLE table_name DROP COLUMN column_name;
ALTER TABLE Students DROP COLUMN Email;

-- Dropping Multiple Columns:
ALTER TABLE Students DROP COLUMN Address,
DROP COLUMN PhoneNumber;

-- DROP CONSTRAINT
ALTER TABLE table_name DROP CONSTRAINT constraint_name;
ALTER TABLE Students DROP CONSTRAINT chk_age;

-- Dropping a Foreign Key Constraint:
ALTER TABLE Courses DROP CONSTRAINT fk_student;

-- Dropping a Primary Key (Without Foreign Key Dependencies):
ALTER TABLE Students DROP PRIMARY KEY;

5. DROP INDEX – Deleting an Index
Syntax:
DROP INDEX index_name ON table_name;
Example:
DROP INDEX idx_student_name ON Students;

6. DROP VIEW – Deleting a View
Syntax:
DROP VIEW view_name;
Example:
*DROP VIEW StudentView;
*DROP VIEW IF EXISTS StudentView;

7. DROP TRIGGER – Deleting a Trigger
Syntax:
DROP TRIGGER trigger_name;
Example:
DROP TRIGGER before_student_insert;

8. DROP PROCEDURE – Deleting a Stored Procedure
Syntax:
DROP PROCEDURE procedure_name;
Example:
DROP PROCEDURE GetStudent;

9. DROP FUNCTION – Deleting a User-Defined Function
Syntax:
DROP FUNCTION function_name;
Example:
DROP FUNCTION GetAge;

10. DROP SCHEMA – Deleting a Schema
Syntax:
DROP SCHEMA schema_name;
Example:
DROP SCHEMA SchoolSchema;

11. DROP USER – Deleting a Database User
Syntax:
DROP USER 'username'@'host';
Example:
DROP USER 'john'@'localhost';
