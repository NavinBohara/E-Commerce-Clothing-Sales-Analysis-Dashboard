/* ============================================================
   E-COMMERCE CLOTHING SALES ANALYSIS (SQL)
   Dataset: ecommerce_sales
   Author: Navin Bohara
   ============================================================ */


/* ============================================================
   1. BASIC SALES ANALYSIS
   ============================================================ */

-- 1. Total Sales
SELECT 
    SUM(amount) AS total_sales
FROM ecommerce_sales;

-- 2. Total Orders
SELECT 
    COUNT(order_id) AS total_orders
FROM ecommerce_sales;

-- 3. Sales by Month
SELECT 
    MONTH(order_date) AS month_number,
    month_name,
    SUM(amount) AS monthly_sales
FROM ecommerce_sales
GROUP BY month_number, month_name
ORDER BY month_number ASC;

-- 4. Sales by Category
SELECT
    category,
    SUM(amount) AS category_sales
FROM ecommerce_sales
GROUP BY category
ORDER BY category_sales DESC;

-- 5. Sales by Size
SELECT 
    size,
    SUM(amount) AS size_sales
FROM ecommerce_sales
GROUP BY size
ORDER BY size_sales DESC;


/* ============================================================
   2. CUSTOMER DEMOGRAPHICS ANALYSIS
   ============================================================ */

-- 6. Sales by Gender
SELECT 
    gender,
    SUM(amount) AS gender_sales
FROM ecommerce_sales
GROUP BY gender
ORDER BY gender_sales DESC;

-- 7. Sales by Age Group
SELECT 
    age_group,
    SUM(amount) AS age_group_sales
FROM ecommerce_sales
GROUP BY age_group
ORDER BY age_group_sales DESC;

-- 8. Average Spending per Age Group
SELECT 
    age_group,
    ROUND(AVG(amount), 2) AS avg_spending
FROM ecommerce_sales
GROUP BY age_group;


/* ============================================================
   3. CHANNEL PERFORMANCE ANALYSIS
   ============================================================ */

-- 9. Sales by Channel
SELECT 
    channel,
    SUM(amount) AS revenue
FROM ecommerce_sales
GROUP BY channel
ORDER BY revenue DESC;

-- 10. Refund Count by Channel
SELECT
    channel,
    COUNT(order_id) AS refund_count
FROM ecommerce_sales
WHERE status = 'Refunded'
GROUP BY channel
ORDER BY refund_count DESC;


/* ============================================================
   4. REGION & CITY INSIGHTS
   ============================================================ */

-- 11. Top States by Sales
SELECT 
    ship_state,
    SUM(amount) AS state_sales
FROM ecommerce_sales
GROUP BY ship_state
ORDER BY state_sales DESC;

-- 12. Top Cities by Number of Orders
SELECT 
    ship_city,
    COUNT(*) AS total_orders
FROM ecommerce_sales
GROUP BY ship_city
ORDER BY total_orders DESC;


/* ============================================================
   5. PRODUCT-LEVEL ANALYSIS
   ============================================================ */

-- 13. Best-Selling SKU
SELECT
    sku,
    COUNT(*) AS order_count,
    SUM(amount) AS revenue
FROM ecommerce_sales
GROUP BY sku
ORDER BY order_count DESC;

-- 14. Category Sales by Channel
SELECT 
    channel, 
    category,
    SUM(amount) AS revenue
FROM ecommerce_sales
GROUP BY channel, category
ORDER BY channel, revenue DESC;


/* ============================================================
   6. ORDER STATUS ANALYSIS
   ============================================================ */

-- 15. Delivered vs Refunded vs Returned
SELECT 
    status,
    COUNT(*) AS total_orders
FROM ecommerce_sales
WHERE status IN ('Delivered', 'Refunded', 'Returned')
GROUP BY status;

-- Full Status Breakdown
SELECT 
    status,
    COUNT(*) AS total_orders
FROM ecommerce_sales
GROUP BY status;


/* ============================================================
   7. ADVANCED SQL ANALYSIS
   ============================================================ */

-- 16. Average Order Amount by City
SELECT 
    ship_city,
    AVG(amount) AS avg_order_amount
FROM ecommerce_sales
GROUP BY ship_city
ORDER BY avg_order_amount DESC;

-- 17. Category-wise Contribution (%)
SELECT 
    category,
    SUM(amount) AS category_sales,
    ROUND(
        (SUM(amount) / (SELECT SUM(amount) FROM ecommerce_sales)) * 100,
        2
    ) AS contribution_percentage
FROM ecommerce_sales
GROUP BY category;

-- 18. Age Group Preference by Category
SELECT 
    age_group,
    category,
    COUNT(*) AS orders
FROM ecommerce_sales
GROUP BY age_group, category
ORDER BY age_group, orders DESC;

-- 19. Top States Ordering "Kurta"
SELECT
    ship_state,
    COUNT(*) AS kurta_orders
FROM ecommerce_sales
WHERE category = 'kurta'
GROUP BY ship_state
ORDER BY kurta_orders DESC;

-- 20. High-Value Customers (Total Spend > 700)
SELECT 
    customer_id,
    SUM(amount) AS total_spent
FROM ecommerce_sales
GROUP BY customer_id
HAVING total_spent > 700;
