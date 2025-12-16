The SAVEPOINT command in SQL is used to create a checkpoint within a transaction. It allows a partial rollback to a specific point without undoing the entire transaction. This is useful when working with large transactions where undoing all changes may not be necessary.

1. Syntax of SAVEPOINT Command

SAVEPOINT savepoint_name;

savepoint_name: A user-defined name for the savepoint.

2. How SAVEPOINT Works

1. A transaction starts using START TRANSACTION; (or BEGIN TRANSACTION;).


2. A SAVEPOINT is created at a specific point.


3. If an error occurs, a ROLLBACK TO savepoint_name can be issued to undo changes made after that savepoint, while keeping earlier changes.


4. The transaction can then proceed, or COMMIT can be issued to save all remaining changes.

3. Example of SAVEPOINT Command

Example 1: Using SAVEPOINT in a Transaction

START TRANSACTION;

INSERT INTO employees (id, name, department, salary) VALUES (101, 'John Doe', 'HR', 60000);
SAVEPOINT sp1;

UPDATE employees SET salary = salary + 500 WHERE department = 'HR';
SAVEPOINT sp2;

DELETE FROM employees WHERE id = 99;
SAVEPOINT sp3;

-- Rollback to the second savepoint, keeping everything before it
ROLLBACK TO sp2;

-- Commit remaining changes
COMMIT;

What Happens Here?

sp1: Inserted a new employee.

sp2: Updated salaries in HR.

sp3: Deleted an employee.

ROLLBACK TO sp2: Undo deletion but keep salary update and insertion.

COMMIT: Saves the remaining changes.

4. Dropping a SAVEPOINT

A SAVEPOINT can be released (removed) using the RELEASE SAVEPOINT command.

RELEASE SAVEPOINT sp2;

After this, ROLLBACK TO sp2 will no longer work.

5. SAVEPOINT in Different Database Systems

MySQL: Supports SAVEPOINT inside transactions.

PostgreSQL: Fully supports SAVEPOINT and ROLLBACK TO.

Oracle: Supports SAVEPOINT but automatically commits when issuing DDL commands (like CREATE, ALTER, DROP).

SQL Server: Uses SAVE TRANSACTION instead of SAVEPOINT.

6. Important Points About SAVEPOINT

1. Only works inside an active transaction: If the transaction is committed or rolled back completely, savepoints are lost.


2. Cannot be used after COMMIT: Once a transaction is committed, all savepoints are erased.


3. Can have multiple savepoints: Allows fine-grained control over rollbacks.


4. ROLLBACK TO does not end the transaction: The transaction remains active after rolling back to a savepoint.

8. When to Use SAVEPOINT?

In complex transactions where multiple changes are made.

When there is a possibility of partial rollback.

In banking applications where some operations must be saved while others can be undone.

In large batch processing where mistakes can occur midway.

9. When Not to Use SAVEPOINT?

When working with auto-commit mode (each statement is automatically committed).

If rolling back the entire transaction is simpler.

If database constraints prevent partial rollbacks.
