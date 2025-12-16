The ROLLBACK command in SQL is used to undo all changes made in the current transaction if they have not been committed. It is an essential part of transaction control, ensuring that incorrect or unintended changes do not persist in the database.

1. Syntax of ROLLBACK Command

ROLLBACK;

This statement undoes all changes in the current transaction and restores the database to its last committed state.

2. How ROLLBACK Works

1. When a transaction begins, SQL allows multiple operations (INSERT, UPDATE, DELETE, etc.).


2. If an error occurs or a user decides not to save changes, ROLLBACK can undo all changes since the last COMMIT.


3. Once ROLLBACK is issued, the database returns to its previous stable state.

3. Example of ROLLBACK Command

Example 1: ROLLBACK After an UPDATE Operation

START TRANSACTION;
UPDATE employees SET salary = salary + 500 WHERE department = 'Sales';
ROLLBACK;

Here, the salary of 'Sales' employees was increased, but the ROLLBACK command reverted the change.

Example 2: ROLLBACK After Multiple Statements

START TRANSACTION;
INSERT INTO employees (id, name, department, salary) VALUES (101, 'John Doe', 'HR', 60000);
UPDATE employees SET salary = salary + 500 WHERE department = 'HR';
DELETE FROM employees WHERE id = 99;
ROLLBACK;

The INSERT, UPDATE, and DELETE statements were executed, but ROLLBACK removed all changes.

4. ROLLBACK with SAVEPOINT

A SAVEPOINT creates a rollback checkpoint within a transaction, allowing a partial rollback instead of undoing the entire transaction.

START TRANSACTION;
INSERT INTO employees (id, name, department, salary) VALUES (102, 'Alice', 'IT', 70000);
SAVEPOINT sp1;
UPDATE employees SET salary = salary + 1000 WHERE department = 'IT';
ROLLBACK TO sp1;  -- Only the UPDATE is undone
COMMIT;  -- The INSERT remains saved

The INSERT operation remains, while the UPDATE is undone.

5. ROLLBACK in Different Database Systems

MySQL: Requires START TRANSACTION before using ROLLBACK.

PostgreSQL: Supports ROLLBACK with explicit transactions.

Oracle: Uses ROLLBACK in PL/SQL blocks for error handling.

SQL Server: Uses ROLLBACK TRANSACTION.

6. Important Points About ROLLBACK

1. Only affects uncommitted transactions: If a COMMIT was already executed, ROLLBACK will have no effect.


2. Releases locks: After rolling back, database locks are released.


3. Affects all operations in the transaction: If multiple operations are performed before a rollback, all of them are undone.


4. Cannot undo a committed transaction: Once COMMIT is executed, ROLLBACK cannot reverse the changes.

8. ROLLBACK with Implicit and Explicit Transactions

Implicit Transaction: Some databases automatically commit changes unless transactions are explicitly controlled.

Explicit Transaction: Requires START TRANSACTION (or BEGIN TRANSACTION) before issuing commands, followed by ROLLBACK or COMMIT.


SET AUTOCOMMIT = 0;  -- Disable Auto Commit
START TRANSACTION;
UPDATE employees SET salary = salary + 500 WHERE department = 'Finance';
ROLLBACK;  -- Changes are undone

9. When to Use ROLLBACK?

When an error occurs during a transaction.

To revert unintended changes.

In banking and financial applications where data integrity is critical.

When validating data before committing changes.

10. When Not to Use ROLLBACK?

When changes are already committed.

If rolling back large transactions could impact performance.

If database constraints prevent rolling back (e.g., foreign key dependencies).
