-- The UPDATE command in SQL is used to modify existing records in a table. 
-- It allows users to change one or more column values based on a specified condition.

-- UPDATE table_name SET column1 = value1, column2 = value2, ... WHERE condition;

UPDATE employees SET salary = 50000 WHERE emp_id = 101;

-- Updating a Single Column
UPDATE students SET age = 21 WHERE id = 1;

-- Updating Multiple Columns
UPDATE students SET age = 22, department = 'Mathematics' WHERE id = 2;

-- Updating All Rows, If WHERE is omitted, all rows in the table will be updated.
UPDATE students SET age = 20;

-- Using CASE for Conditional Updates
UPDATE students
SET department = 
    CASE 
        WHEN age < 20 THEN 'Junior'
        WHEN age BETWEEN 20 AND 25 THEN 'Senior'
        ELSE 'Graduate'
    END;

-- Updating with limt
UPDATE students SET department = 'Physics' WHERE age = 22 LIMIT 2;
-- Only updates 2 rows where age = 22;

-- You can update a table based on data from another table.
UPDATE students
SET department = (SELECT department FROM alumni WHERE alumni.id = students.id)
WHERE EXISTS (SELECT 1 FROM alumni WHERE alumni.id = students.id);

-- Constraints That Affect UPDATE
-- Primary Key (PRIMARY KEY): The primary key value should not be changed.
-- Unique (UNIQUE): A column marked as UNIQUE must have unique values.
-- Foreign Key (FOREIGN KEY): You cannot update a foreign key value to something that does not exist in the referenced table.
-- Not Null (NOT NULL): Cannot set a NOT NULL column to NULL.

-- UPDATE students SET id = NULL WHERE id =1;
-- here id is a primary key so it can't be NULL
