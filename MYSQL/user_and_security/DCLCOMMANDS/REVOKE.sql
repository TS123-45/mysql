The REVOKE command is a Data Control Language (DCL) command in SQL that is used to remove or withdraw previously granted privileges from users or roles on database objects like tables, views, stored procedures, etc. It ensures database security by restricting users from performing specific operations.

1. Syntax of REVOKE Command

REVOKE privilege_name(s) ON object_name FROM user_name;

privilege_name(s) – The specific privileges to revoke (e.g., SELECT, INSERT, UPDATE, DELETE, etc.).

object_name – The database object (e.g., table, view, procedure, etc.).

user_name – The user or role from whom the privileges are revoked.


If a user has been granted privileges with WITH GRANT OPTION, revoking those privileges will also remove any privileges that the user granted to others.

3. Examples of REVOKE Command

A. Revoking Privileges from a User on a Table

REVOKE SELECT, INSERT ON employees FROM user1;

This removes SELECT and INSERT privileges from user1 on the employees table.

B. Revoking All Privileges on a Table

REVOKE ALL PRIVILEGES ON employees FROM user1;

This removes all permissions from user1 on the employees table.

C. Revoking Privileges from Multiple Users

REVOKE UPDATE, DELETE ON orders FROM user1, user2;

This removes UPDATE and DELETE privileges from both user1 and user2 on the orders table.

D. Revoking Privileges on a Database

REVOKE CREATE, DROP ON database_name.* FROM user1;

This removes CREATE and DROP permissions from user1 on database_name.

E. Revoking Execution Privilege on a Stored Procedure

REVOKE EXECUTE ON PROCEDURE get_employee_details FROM user1;

This prevents user1 from executing the stored procedure get_employee_details.

F. Revoking WITH GRANT OPTION Privileges

REVOKE GRANT OPTION FOR SELECT ON employees FROM user1;

This removes the ability of user1 to grant the SELECT privilege to others, but user1 will still have SELECT access.

4. Checking Revoked Privileges

After revoking privileges, you can verify the user's privileges using:

SHOW GRANTS FOR user1;

or

SELECT * FROM information_schema.USER_PRIVILEGES WHERE GRANTEE='user1';
