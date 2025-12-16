The GRANT command in SQL is a Data Control Language (DCL) command used to provide specific privileges to users or roles on database objects like tables, views, procedures, etc. It helps manage database security by allowing authorized users to perform operations like SELECT, INSERT, UPDATE, DELETE, and more.

1. Syntax of GRANT Command

GRANT privilege_name(s) ON object_name TO user_name [WITH GRANT OPTION];

privilege_name(s) – The specific privileges to grant (e.g., SELECT, INSERT, UPDATE, DELETE, EXECUTE, etc.).

object_name – The database object (e.g., table, view, procedure, etc.).

user_name – The user or role that receives the privileges.

WITH GRANT OPTION – Allows the recipient to grant the same privileges to other users.

3. Examples of GRANT Command

A. Granting Privileges on a Table

GRANT SELECT, INSERT, UPDATE ON employees TO user1;

This grants user1 permission to select, insert, and update data in the employees table.

B. Granting All Privileges on a Table

GRANT ALL PRIVILEGES ON employees TO admin;

This allows admin to perform all actions on the employees table.

C. Granting Privileges to Multiple Users

GRANT SELECT, UPDATE ON orders TO user1, user2;

Both user1 and user2 can select and update data in the orders table.

D. Granting Privileges on a Database

GRANT CREATE, DROP ON database_name.* TO user1;

This allows user1 to create and drop objects within database_name.

E. Granting Execution Privilege on a Stored Procedure

GRANT EXECUTE ON PROCEDURE get_employee_details TO user1;

This allows user1 to execute the stored procedure get_employee_details.

F. Using WITH GRANT OPTION

GRANT SELECT ON employees TO user1 WITH GRANT OPTION;

This allows user1 to grant the SELECT privilege on employees to other users.

4. Checking Granted Privileges

You can check the privileges granted to a user using:

SHOW GRANTS FOR user1;

or

SELECT * FROM information_schema.USER_PRIVILEGES WHERE GRANTEE='user1';

5. Revoking Privileges (Opposite of GRANT)

If you need to remove granted privileges, use the REVOKE command:

REVOKE SELECT, INSERT ON employees FROM user1;

This removes SELECT and INSERT privileges from user1 on the employees table.
