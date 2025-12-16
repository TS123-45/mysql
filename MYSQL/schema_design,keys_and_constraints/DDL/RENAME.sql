-- The RENAME command in SQL is used to change the name of a database object 
-- such as a table, column, database, schema, or index.

-- RENAME TABLE – Renaming a Table
RENAME TABLE old_table_name TO new_table_name;
RENAME TABLE Students TO Learners;

-- Renaming Multiple Tables (MySQL):
RENAME TABLE Orders TO CustomerOrders, Employees TO Staff;

-- RENAME DATABASE – Renaming a Database
RENAME DATABASE old_db_name TO new_db_name;

RENAME TABLE OldDB.Students TO NewDB.Students;

-- Renaming a Database in SQL Server
ALTER DATABASE old_db_name MODIFY NAME = new_db_name;

-- Renaming Constraints (Primary Key, Foreign Key, Unique, Check)
ALTER TABLE table_name RENAME CONSTRAINT old_constraint_name TO new_constraint_name;
ALTER TABLE Orders RENAME CONSTRAINT fk_customer TO fk_client;



4. RENAME SCHEMA – Renaming a Schema
Syntax:
ALTER SCHEMA old_schema_name RENAME TO new_schema_name;
Example:
ALTER SCHEMA sales_data RENAME TO customer_data;
⚠ SQL Server and MySQL do not support renaming schemas.

5. RENAME INDEX – Renaming an Index
Syntax:
ALTER INDEX old_index_name RENAME TO new_index_name;
Example:
ALTER INDEX idx_students_name RENAME TO idx_students_fullname;
EXEC sp_rename 'idx_students_name', 'idx_students_fullname', 'INDEX';


common errors:
Cannot rename table because it is referenced by a foreign key.
Fix:
Drop the foreign key constraint first.
Rename the table.
Recreate the foreign key constraint.

ALTER TABLE Orders DROP CONSTRAINT fk_customer;
RENAME TABLE Customers TO Clients;
ALTER TABLE Orders ADD CONSTRAINT fk_client FOREIGN KEY (ClientID) REFERENCES Clients(ID);
