create database groupbydb;

use groupbydb;

CREATE TABLE sales (
  id INT AUTO_INCREMENT PRIMARY KEY,
  product VARCHAR(50),
  category VARCHAR(50),
  quantity INT,
  price DECIMAL(10,2),
  sale_date DATE
);

INSERT INTO sales (product, category, quantity, price, sale_date) VALUES
('Laptop', 'Electronics', 5, 75000, '2024-01-05'),
('Laptop', 'Electronics', 3, 72000, '2024-02-10'),
('Headphones', 'Electronics', 20, 2500, '2025-01-15'),
('Smartphone', 'Electronics', 10, 40000, '2024-02-01'),
('Refrigerator', 'Appliances', 2, 30000, '2024-01-20'),
('Washing Machine', 'Appliances', 3, 18000, '2024-02-05'),
('Mixer', 'Appliances', 15, 3500, '2024-02-14'),
('Notebook', 'Stationery', 100, 50, '2025-01-07'),
('Pen', 'Stationery', 200, 10, '2024-01-09'),
('Marker', 'Stationery', 150, 25, '2024-02-12'),
('Desk Chair', 'Furniture', 7, 4500, '2024-01-30'),
('Table', 'Furniture', 5, 7000, '2025-02-03'),
('Sofa', 'Furniture', 2, 30000, '2024-02-11'),
('Laptop', 'Electronics', 4, 68000, '2025-03-01'),
('Smartphone', 'Electronics', 8, 38000, '2024-03-05');

SELECT category, COUNT(*)  FROM sales GROUP BY category;

SELECT category, SUM(quantity) AS total_quantity FROM sales GROUP BY category;

SELECT category, AVG(price) AS avg_price FROM sales GROUP BY category;

SELECT category, MIN(price) AS lowest_price, MAX(price) AS highest_price FROM sales GROUP BY category;

SELECT category, product, SUM(quantity) AS total_qty FROM sales GROUP BY category, product;

SELECT category, SUM(quantity) FROM sales WHERE price > 100 group by category;

SELECT category, SUM(quantity) AS total_qty FROM sales GROUP BY category HAVING total_qty > 500;

SELECT category, COUNT(*) AS total_sales FROM sales GROUP BY category HAVING total_sales >= 10;

SELECT category, SUM(quantity) AS total_qty FROM sales WHERE price > 100 GROUP BY category HAVING total_qty > 300;

SELECT category, SUM(quantity) AS total_qty FROM sales GROUP BY category ORDER BY total_qty DESC;

SELECT category, SUM(quantity) AS total_qty FROM sales GROUP BY category ORDER BY total_qty DESC LIMIT 3;

SELECT YEAR(sale_date) AS sale_year, SUM(price) AS total_sales FROM sales GROUP BY sale_year;

SELECT month(sale_date) AS sale_month, SUM(price) AS total_sales FROM sales GROUP BY sale_month;

SELECT 
  CASE 
    WHEN price > 500 THEN 'Premium'
    ELSE 'Normal'
  END AS price_type,
  COUNT(*) AS total_items
FROM sales
GROUP BY price_type;

CREATE TABLE products (
  product VARCHAR(50),
  brand VARCHAR(50)
);

INSERT INTO products (product, brand) VALUES
('Laptop', 'Dell'),
('Smartphone', 'Samsung'),
('Headphones', 'Sony'),
('Refrigerator', 'LG'),
('Washing Machine', 'LG'),
('Mixer', 'Phillips'),
('Notebook', 'Classmate'),
('Pen', 'Cello'),
('Marker', 'Camlin'),
('Desk Chair', 'Godrej'),
('Table', 'Godrej'),
('Sofa', 'Durian');

SELECT p.brand, SUM(s.quantity) AS total_qty 
FROM sales s JOIN products p ON s.product = p.product GROUP BY p.brand;

drop database groupbydb;