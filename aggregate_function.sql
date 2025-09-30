CREATE DATABASE shopDB;
USE shopDB;
CREATE TABLE orders (
    order_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT,
    product_id INT,
    quantity INT,
    total_price DECIMAL(10,2),
    order_date DATE
);
INSERT INTO orders (customer_id, product_id, quantity, total_price, order_date) VALUES
(101, 501, 2, 400.00, '2025-09-01'),
(102, 502, 1, 200.00, '2025-09-02'),
(101, 501, 3, 600.00, '2025-09-05'),
(103, 503, 5, 1000.00, '2025-09-10'),
(104, 504, 2, 500.00, '2025-09-12'),
(102, 502, 4, 800.00, '2025-09-15');
SELECT SUM(total_price) AS total_revenue
FROM orders;
SELECT AVG(total_price) AS avg_order_value
FROM orders;
SELECT COUNT(*) AS total_orders
FROM orders;
SELECT customer_id, SUM(total_price) AS total_spent
FROM orders
GROUP BY customer_id;
SELECT product_id, SUM(quantity) AS total_quantity
FROM orders
GROUP BY product_id;
SELECT customer_id, SUM(total_price) AS total_spent
FROM orders
GROUP BY customer_id
HAVING SUM(total_price) > 800;
