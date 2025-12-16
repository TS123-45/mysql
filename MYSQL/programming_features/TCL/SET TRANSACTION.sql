The SET TRANSACTION command in SQL is used to define the properties of a transaction, such as its isolation level or read/write mode. This helps control how transactions interact with the database, particularly in multi-user environments.

1. Syntax of SET TRANSACTION Command

SET TRANSACTION [READ WRITE | READ ONLY] [ISOLATION LEVEL {READ UNCOMMITTED | READ COMMITTED | REPEATABLE READ | SERIALIZABLE}];

READ WRITE / READ ONLY: Specifies whether the transaction allows modifications.

ISOLATION LEVEL: Determines how data consistency and concurrency are managed.

2. How SET TRANSACTION Works

1. A transaction starts using START TRANSACTION; (or BEGIN TRANSACTION;).


2. SET TRANSACTION modifies the transaction’s properties.


3. The transaction proceeds with the defined settings.


4. Changes are finalized with COMMIT or undone with ROLLBACK.

3. Examples of SET TRANSACTION Command

Example 1: Setting a Read-Only Transaction

START TRANSACTION;
SET TRANSACTION READ ONLY;
SELECT * FROM employees WHERE department = 'HR';
COMMIT;

The transaction only allows SELECT statements; no modifications can be made.

Example 2: Setting a Read-Write Transaction

START TRANSACTION;
SET TRANSACTION READ WRITE;
UPDATE employees SET salary = salary + 500 WHERE department = 'IT';
COMMIT;

Allows data modifications within the transaction.

Example 3: Setting an Isolation Level

START TRANSACTION;
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE;
UPDATE employees SET salary = salary + 500 WHERE department = 'Finance';
COMMIT;

The highest isolation level (SERIALIZABLE) ensures strict data consistency.

5. SET TRANSACTION in Different Databases

MySQL: Supports SET TRANSACTION for session-wide settings.

PostgreSQL: Uses SET TRANSACTION within transactions.

Oracle: Allows setting transaction modes and isolation levels.

SQL Server: Uses SET TRANSACTION ISOLATION LEVEL separately.

6. Important Points About SET TRANSACTION

1. Must be the first statement in a transaction: Cannot be used after executing other statements.


2. Overrides session defaults: Affects only the current transaction.


3. Improves database performance: Choosing the right isolation level reduces locking issues.


4. Cannot change isolation level after execution: Needs a new transaction to modify settings.

8. When to Use SET TRANSACTION?

When requiring read-only access to prevent accidental changes.

To control transaction isolation levels for data consistency.

When optimizing database performance in multi-user environments.

9. When Not to Use SET TRANSACTION?

When the default isolation level is sufficient.

If all transactions require read-write operations.

When working in databases that auto-commit transactions.
