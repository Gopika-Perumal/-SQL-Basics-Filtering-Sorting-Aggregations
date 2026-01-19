/* =========================================
   Task 3: SQL Basics – Filtering, Sorting,
   and Aggregations
   Dataset: Superstore Sales
   ========================================= */

-- View sample records
SELECT * FROM superstore_sales LIMIT 10;

-- Count total records
SELECT COUNT(*) AS total_records FROM superstore_sales;

-- Filter Technology category
SELECT * FROM superstore_sales
WHERE category = 'Technology';

-- Top 10 products by sales
SELECT product_name, sales
FROM superstore_sales
ORDER BY sales DESC
LIMIT 10;

-- Total sales by category
SELECT category, SUM(sales) AS total_sales
FROM superstore_sales
GROUP BY category;

-- Average profit by region
SELECT region, AVG(profit) AS average_profit
FROM superstore_sales
GROUP BY region;

-- Orders count per segment
SELECT segment, COUNT(*) AS total_orders
FROM superstore_sales
GROUP BY segment;

-- Categories with sales greater than 100000
SELECT category, SUM(sales) AS total_sales
FROM superstore_sales
GROUP BY category
HAVING SUM(sales) > 100000;

-- Monthly sales report
SELECT order_date, SUM(sales) AS daily_sales
FROM superstore_sales
WHERE order_date BETWEEN '2017-01-01' AND '2017-01-31'
GROUP BY order_date;

-- Customer names starting with A
SELECT customer_name, sales
FROM superstore_sales
WHERE customer_name LIKE 'A%';

-- Products containing Chair
SELECT product_name, sales
FROM superstore_sales
WHERE product_name LIKE '%Chair%';
