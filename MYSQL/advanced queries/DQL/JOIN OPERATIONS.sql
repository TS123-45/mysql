CREATE TABLE students (
  student_id INT PRIMARY KEY,
  name VARCHAR(50),
  class VARCHAR(10)
);

CREATE TABLE marks (
  mark_id INT PRIMARY KEY,
  student_id INT,
  subject VARCHAR(50),
  score INT
);
Sample data:

sql
Copy code
INSERT INTO students VALUES
(1, 'Tony', '10A'),
(2, 'Ravi', '10A'),
(3, 'Priya', '10B'),
(4, 'Kumar', '10B');

INSERT INTO marks VALUES
(101, 1, 'Math', 95),
(102, 2, 'Math', 88),
(103, 3, 'Math', 45);
Note: Student ID 4 has no marks entry.

⭐ 1️⃣ INNER JOIN
✔ Returns only matching records from both tables
❌ Unmatched rows are excluded
Diagram:

css
Copy code
STUDENTS ⋂ MARKS
SQL:

sql
Copy code
SELECT s.student_id, s.name, m.subject, m.score
FROM students s
INNER JOIN marks m
ON s.student_id = m.student_id;
Result: Only students 1, 2, 3 appear (because 4 has no marks)

⭐ 2️⃣ LEFT JOIN (LEFT OUTER JOIN)
✔ Returns ALL rows from LEFT table
✔ Matching rows from RIGHT table
❌ Non-matching get NULL
Diagram:

sql
Copy code
STUDENTS ⟹ (all left rows appear)
SQL:

sql
Copy code
SELECT s.student_id, s.name, m.subject, m.score
FROM students s
LEFT JOIN marks m
ON s.student_id = m.student_id;
Result:
Students 1,2,3 have marks
Student 4 appears with NULL marks → included

⭐ 3️⃣ RIGHT JOIN (RIGHT OUTER JOIN)
✔ Returns ALL rows from RIGHT table
✔ Matching rows from LEFT
❌ Non-matching LEFT becomes NULL
Diagram:

css
Copy code
⟸ MARKS (all right rows appear)
SQL:

sql
Copy code
SELECT s.student_id, s.name, m.subject, m.score
FROM students s
RIGHT JOIN marks m
ON s.student_id = m.student_id;
Result:
All marks rows appear
Any student missing will show NULL

⭐ 4️⃣ FULL OUTER JOIN (MySQL does not support directly)
✔ Combine LEFT JOIN + RIGHT JOIN
✔ Returns all matching + non-matching records
Diagram:

scss
Copy code
Left + Right + Middle (everything)
SQL (MySQL method using UNION):

sql
Copy code
SELECT s.student_id, s.name, m.subject, m.score
FROM students s
LEFT JOIN marks m
ON s.student_id = m.student_id

UNION

SELECT s.student_id, s.name, m.subject, m.score
FROM students s
RIGHT JOIN marks m
ON s.student_id = m.student_id;
Result:
Every student and every mark entry appears.

⭐ 5️⃣ SELF JOIN
✔ Joining a table with itself
✔ Useful for hierarchical relationships
(e.g., manager–employee)

Example table:

bash
Copy code
employees
id | name | manager_id
SQL:

sql
Copy code
SELECT e.name AS Employee, m.name AS Manager
FROM employees e
LEFT JOIN employees m
ON e.manager_id = m.id;