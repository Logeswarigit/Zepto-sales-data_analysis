CREATE DATABASE zepto_project;
USE zepto_project;
CREATE TABLE zepto_sales (
order_id INT,
product_name VARCHAR(100),
category VARCHAR(50),
city VARCHAR(50),
price INT,
quantity INT,
order_date DATE
);

SELECT *
FROM zepto_sales
LIMIT 5;

SELECT COUNT(*) AS total_orders
FROM zepto_sales;

SELECT SUM(mrp * quantity) AS total_revenue
FROM zepto_sales;

DESCRIBE zepto_sales;

SELECT name,
SUM(quantity) AS total_sales
FROM zepto_sales
GROUP BY name
ORDER BY total_sales DESC
LIMIT 10;

SELECT outofstock,
SUM(mrp * quantity) AS revenue
FROM zepto_sales
GROUP BY outofstock
ORDER BY revenue DESC;

SELECT MONTH(discountedsellingprice) AS month,
SUM(mrp * quantity) AS monthly_sales
FROM zepto_sales
GROUP BY month
ORDER BY month;

SELECT category,
SUM(mrp * quantity) AS revenue
FROM zepto_sales
GROUP BY category
ORDER BY revenue DESC;

SELECT AVG(mrp * quantity) AS 
avg_order_value
FROM zepto_sales;

SELECT * FROM zepto_sales LIMIT 10;
DESCRIBE zepto_sales;

TRUNCATE TABLE zepto_sales;