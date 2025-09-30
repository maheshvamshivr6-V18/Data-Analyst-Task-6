-- Sales Trend Analysis Using Aggregations

-- Monthly revenue & order volume
SELECT
    EXTRACT(YEAR FROM order_date) AS year,
    EXTRACT(MONTH FROM order_date) AS month,
    SUM(amount) AS monthly_revenue,
    COUNT(DISTINCT order_id) AS order_volume
FROM online_sales.orders
GROUP BY year, month
ORDER BY year, month;

-- Top 3 months by sales
SELECT
    EXTRACT(YEAR FROM order_date) AS year,
    EXTRACT(MONTH FROM order_date) AS month,
    SUM(amount) AS monthly_revenue
FROM online_sales.orders
GROUP BY year, month
ORDER BY monthly_revenue DESC
LIMIT 3;