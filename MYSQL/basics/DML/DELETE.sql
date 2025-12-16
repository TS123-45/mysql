-- The DELETE command in SQL is used to remove one or more records from a table.

-- Syntax of DELETE Command
-- DELETE FROM table_name WHERE condition;
-- Omitting WHERE will delete all rows from the table!

-- Deleting a Specific Row
DELETE FROM students WHERE id = 5;

-- Deleting Multiple Rows Based on a Condition
DELETE FROM students WHERE age < 18;

-- Deleting All Rows in a Table
DELETE FROM students;

-- Using DELETE with LIMIT 
DELETE FROM students WHERE age > 25 LIMIT 2;

-- Using DELETE with ORDER BY
DELETE FROM students ORDER BY age DESC LIMIT 1;

-- You can delete records from a table based on conditions from another table.
DELETE students FROM students
INNER JOIN enrollments ON students.id = enrollments.student_id WHERE enrollments.course_id = 101;
-- Deletes students who are enrolled in course 101.

DELETE students FROM students
LEFT JOIN enrollments ON students.id = enrollments.student_id WHERE enrollments.student_id IS NULL;
-- Deletes students who have no enrollments.

-- Using DELETE with Subqueries
a) Deleting Records Based on Another Table
DELETE FROM students WHERE id IN (SELECT student_id FROM alumni);
Deletes students who exist in the alumni table.

b) Deleting Records with a Conditional Subquery
DELETE FROM employees 
WHERE department = (SELECT department FROM employees WHERE name = 'John Doe');

Constraints That Affect DELETE
a) FOREIGN KEY Constraints
If a table has a foreign key, deleting a referenced row may fail.
Example:
DELETE FROM customers WHERE customer_id = 10;
Error: If orders table references customers, deletion may fail.

b) ON DELETE CASCADE (to overcome the above problem)
Allows automatic deletion of related rows.
Example:
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id) ON DELETE CASCADE
);
Now, deleting a customer_id in customers automatically deletes related orders.

c) ON DELETE SET NULL(this one also can overcome first problem)
Sets related foreign keys to NULL instead of deleting.
Example:
FOREIGN KEY (customer_id) REFERENCES customers(customer_id) ON DELETE SET NULL;
If a customer is deleted, their customer_id in orders becomes NULL.
