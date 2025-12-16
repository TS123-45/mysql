-- The TRUNCATE command in SQL is used to remove all rows from a table 
-- while preserving its structure, columns, indexes, and constraints.

-- TRUNCATE TABLE Syntax
TRUNCATE TABLE table_name;
TRUNCATE TABLE Students; 
TRUNCATE TABLE IF EXISTS Students;
 
-- TRUNCATE with Partitions (Advanced)
ALTER TABLE Sales TRUNCATE PARTITION p2024;
Removes only data from the p2024 partition in the Sales table.

2. Can TRUNCATE Be Rolled Back
BEGIN;
TRUNCATE TABLE Employees;
ROLLBACK; -- Restores the table data


3. Restrictions on TRUNCATE
*Cannot be used on a table referenced by a FOREIGN KEY
*You must disable or drop the foreign key constraint first.
Solution:
ALTER TABLE Orders DROP CONSTRAINT fk_customer;
TRUNCATE TABLE Orders;
ALTER TABLE Orders ADD CONSTRAINT fk_customer FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID);

*Cannot be used on views
TRUNCATE VIEW StudentView;  -- ERROR: TRUNCATE does not work on views

*Does not work with WHERE condition
TRUNCATE TABLE Employees WHERE ID = 5;  -- ERROR!
Use DELETE if you need conditional deletions.
