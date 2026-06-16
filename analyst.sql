CREATE DATABASE olist_project;

USE olist_project;

SELECT COUNT(*) FROM sellers;

### 1. 전체 고객수
SELECT COUNT(*) AS total_customers
FROM customers;

### 2. 전체 주문수
SELECT COUNT(*) AS total_orders
FROM orders;

### 3. 총 매출
SELECT ROUND(SUM(price), 2) AS total_revenue
FROM order_items;

### 4. 평균 주문 금액
SELECT ROUND(AVG(payment_value), 2) AS avg_order_value
FROM payments;

### 5. 월별 매출액
SELECT 
    DATE_FORMAT(o.order_purchase_timestamp, '%Y-%m') AS order_month,
    ROUND(SUM(oi.price), 2) AS revenue
FROM orders o
JOIN order_items oi
    ON o.order_id = oi.order_id
GROUP BY order_month
ORDER BY order_month;

### 6. 월별 주문수, 매출액
SELECT
	DATE_FORMAT(o.order_purchase_timestamp, '%Y-%m') AS order_month,
    COUNT(DISTINCT o.order_id) AS total_orders,
    ROUND(SUM(oi.price), 2) AS revenue
FROM orders o
JOIN order_items oi
	ON o.order_id = oi.order_id
GROUP BY order_month
ORDER BY order_month;

### 7. 리뷰 점수 분포
SELECT review_score, COUNT(*) AS review_count
FROM reviews
GROUP BY review_score
ORDER BY review_score;

### 8. 배송 지연 여부
SELECT 
	CASE
		WHEN order_delivered_customer_date > order_estimated_delivery_date
        THEN 'Delayed'
        ELSE 'On Time'
	END AS delivery_status,
    
    ROUND(AVG(r.review_score), 2) AS avg_review_score
    
FROM orders o

JOIN reviews r ON o.order_id = r.order_id

WHERE order_delivered_customer_date IS NOT NULL
GROUP BY delivery_status; ### delayed인 경우 on time에 비해 평균 리뷰 점수가 낮음.

### 9. TOP 10 카테고리
SELECT
	pct.product_category_name_english,
    COUNT(*) AS total_sales

FROM order_items oi

JOIN products p 
	ON oi.product_id = p.product_id
JOIN category_translation pct 
	ON p.product_category_name = pct.product_category_name
    
GROUP BY pct.product_category_name_english
ORDER BY total_sales DESC
LIMIT 10;
