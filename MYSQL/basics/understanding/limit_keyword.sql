create database limitdb;

use limitdb;

CREATE TABLE products (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    price INT,
    category VARCHAR(50)
);

INSERT INTO products (name, price, category) VALUES
('Laptop', 50000, 'Electronics'),
('Mobile', 20000, 'Electronics'),
('Earphones', 500, 'Electronics'),
('Shirt', 700, 'Fashion'),
('Shoes', 1500, 'Fashion'),
('Watch', 1200, 'Fashion'),
('Pen', 20, 'Stationery'),
('Notebook', 50, 'Stationery'),
('Bag', 800, 'Fashion'),
('Charger', 600, 'Electronics');

SELECT * FROM products LIMIT 5;

SELECT * FROM products ORDER BY price DESC LIMIT 3;

-- Skip first 3 rows → return next 4 rows.
SELECT * FROM products LIMIT 3, 4;

-- LIMIT with OFFSET (LIMIT offset, count) Skip 3 rows → take next 4 rows.
SELECT * FROM products LIMIT 4 OFFSET 3;

SELECT * FROM products WHERE category='Fashion' LIMIT 1;

SELECT * FROM products WHERE price > 1000 LIMIT 3;

SELECT * FROM products WHERE category='Electronics' ORDER BY price DESC LIMIT 2;

SELECT * FROM products ORDER BY id DESC LIMIT 3;

SELECT * FROM products LIMIT 5 OFFSET 5;

SELECT p.name, p.price, p.category FROM products p JOIN categories c ON p.category = c.name LIMIT 4;

SELECT name, price, category FROM products WHERE category='Fashion' ORDER BY price DESC LIMIT 2;

drop database limitdb;