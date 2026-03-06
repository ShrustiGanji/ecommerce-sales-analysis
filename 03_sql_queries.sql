/*Order Status Distribution*/
SELECT 
    order_status,
    COUNT(order_id) AS total_orders
FROM orders
GROUP BY order_status
ORDER BY total_orders DESC;

/*Monthly Revenue Trend*/
SELECT 
    YEAR(o.order_purchase_timestamp) AS order_year,
    MONTH(o.order_purchase_timestamp) AS order_month,
    COUNT(DISTINCT o.order_id) AS total_orders,
    SUM(oi.price) AS revenue
FROM orders o
JOIN order_items oi
ON o.order_id = oi.order_id
GROUP BY 
    YEAR(o.order_purchase_timestamp),
    MONTH(o.order_purchase_timestamp)
ORDER BY order_year, order_month;

/*Top Product Categories by Revenue*/
SELECT 
    pc.product_category_name_english,
    COUNT(oi.order_item_id) AS total_items_sold,
    SUM(oi.price) AS total_revenue
FROM order_items oi
JOIN products p 
ON oi.product_id = p.product_id
JOIN product_category pc
ON p.product_category_name = pc.product_category_name
GROUP BY pc.product_category_name_english
ORDER BY total_revenue DESC;

/*Average Product Price per Category*/
SELECT 
    pc.product_category_name_english,
    AVG(oi.price) AS avg_price
FROM order_items oi
JOIN products p 
ON oi.product_id = p.product_id
JOIN product_category pc
ON p.product_category_name = pc.product_category_name
GROUP BY pc.product_category_name_english
ORDER BY avg_price DESC;

/*Customer Retention*/
SELECT 
    customer_unique_id,
    COUNT(order_id) AS total_orders
FROM orders o
JOIN customers c
ON o.customer_id = c.customer_id
GROUP BY customer_unique_id
HAVING COUNT(order_id) > 1;

/*Customer Retention Rate*/
SELECT 
    COUNT(DISTINCT CASE WHEN order_count > 1 THEN customer_unique_id END) * 100.0 /
    COUNT(DISTINCT customer_unique_id) AS retention_rate
FROM
(
    SELECT 
        c.customer_unique_id,
        COUNT(o.order_id) AS order_count
    FROM orders o
    JOIN customers c
    ON o.customer_id = c.customer_id
    GROUP BY c.customer_unique_id
) t;

/*Total Revenue KPI*/
SELECT 
    SUM(price) AS total_revenue
FROM order_items;

/*Average Order Value*/
SELECT 
    SUM(oi.price) / COUNT(DISTINCT o.order_id) AS avg_order_value
FROM orders o
JOIN order_items oi
ON o.order_id = oi.order_id;

/*Delayed Deliveries*/
SELECT 
    COUNT(*) AS delayed_orders
FROM orders
WHERE order_delivered_customer_date > order_estimated_delivery_date;

/*Total Orders*/
SELECT COUNT(order_id) AS total_orders
FROM orders;