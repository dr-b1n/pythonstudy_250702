CREATE DATABASE IF NOT EXISTS nike_db_v1;
USE nike_db_v1;

CREATE TABLE sales (
	sales_id INT PRIMARY KEY,
    product_id INT,
    sales_date DATE,
    amount INT
);
#레코드는 레코드만의 고유한 id값이 필요하다

DESC sales;

INSERT INTO sales (sales_id, product_id, sales_date, amount) VALUES
(201, 100, "2025-07-15", 200),
(202, 100, "2025-07-20", 180),
(203, 200, "2025-06-05", 150),
(204, 100, "2025-06-10", 210),
(205, 200, "2025-05-11", 160),
(206, 300, "2025-05-20", 240),
(207, 100, "2025-04-01", 200),
(208, 300, "2025-04-15", 220),
(209, 200, "2025-03-05", 130);

SELECT * FROM sales;

SELECT 
	product_id, 
    DATE_FORMAT(sales_date, '%Y-%m') AS sales_month,
	AVG(amount) AS avg_monthly_sales
FROM sales
WHERE sales_date >= CURDATE() - INTERVAL 1 YEAR
GROUP BY product_id, sales_month
ORDER BY product_id, sales_month;

# TO_CHAR : DATE 형식으로 들어온 데이터를 문자열로 바꿔줌

