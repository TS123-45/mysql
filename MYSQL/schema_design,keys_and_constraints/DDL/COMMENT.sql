The COMMENT command in SQL is used to add, modify, or remove comments on various database objects such as tables, columns, schemas, databases, and constraints. Comments provide metadata or descriptions for database objects, making it easier to understand their purpose.

> ⚠ Not all SQL databases support the COMMENT command in the same way. Some use different approaches for adding comments.

2. COMMENT ON TABLE – Adding Comments to Tables

Syntax
COMMENT ON TABLE table_name IS 'Your comment here';
Example
COMMENT ON TABLE Employees IS 'Stores employee details, including salary and position';

Removing a Table Comment
COMMENT ON TABLE Employees IS NULL;

3. COMMENT ON COLUMN – Adding Comments to Columns

Syntax
COMMENT ON COLUMN table_name.column_name IS 'Your comment here';

Example
COMMENT ON COLUMN Employees.salary IS 'Stores employee salary in USD';

Removing a Column Comment
COMMENT ON COLUMN Employees.salary IS NULL;

4. COMMENT ON DATABASE

Syntax (PostgreSQL, Oracle)
COMMENT ON DATABASE database_name IS 'Your database description here';
Example
COMMENT ON DATABASE SalesDB IS 'Stores all sales and customer transactions';

Removing a Database Comment
COMMENT ON DATABASE SalesDB IS NULL;

5. COMMENT ON SCHEMA
Syntax (PostgreSQL, Oracle)
COMMENT ON SCHEMA schema_name IS 'Your schema description here';
Example
COMMENT ON SCHEMA accounting IS 'Contains tables related to company finances';

Removing a Schema Comment
COMMENT ON SCHEMA accounting IS NULL;

6. COMMENT ON INDEX
Syntax (PostgreSQL, Oracle)
COMMENT ON INDEX index_name IS 'Your index description here';
Example
COMMENT ON INDEX idx_employee_name IS 'Speeds up searches on employee names';

Removing an Index Comment
COMMENT ON INDEX idx_employee_name IS NULL;

7. COMMENT ON CONSTRAINT – Adding Comments to Constraints
Syntax (PostgreSQL, Oracle)
COMMENT ON CONSTRAINT constraint_name ON table_name IS 'Your constraint description here';
Example
COMMENT ON CONSTRAINT chk_salary ON Employees IS 'Ensures salary is greater than zero';

Removing a Constraint Comment
COMMENT ON CONSTRAINT chk_salary ON Employees IS NULL;

8. How to Retrieve Comments?
postgresql
SELECT obj_description('employees'::regclass, 'pg_class');
oracle
SELECT table_name, comments FROM user_tab_comments WHERE table_name = 'EMPLOYEES';

SELECT column_name, comments FROM user_col_comments WHERE table_name = 'EMPLOYEES';

10. Alternative Ways to Add Comments in SQL
1. Inline Comments (-- for Single-Line)
2. Block Comments (/* ... */ for Multi-Line)

12. Common Errors and Fixes
* Error: Commenting Not Supported in SQL Server

* Error: Commenting Not Allowed on Constraints in MySQL

