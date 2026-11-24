-- DE-102: Raw Orders Profiling

-- 1. Total rows and unique orders
SELECT
    COUNT(*) AS total_rows,
    COUNT(DISTINCT order_id) AS unique_orders
FROM raw_orders;

-- 2. Identify duplicate order IDs

SELECT
    order_id,
    COUNT(*) AS occurrence_count
FROM raw_orders
GROUP BY order_id
HAVING COUNT(*) > 1;


SELECT
    o.order_id,
    o.customer_id
FROM raw_orders o
LEFT JOIN raw_customers c
    ON o.customer_id = c.customer_id
WHERE c.customer_id IS NULL;

-- 4. Find orders with missing product references

SELECT
    o.order_id,
    o.product_id
FROM raw_orders o
LEFT JOIN raw_products p
    ON o.product_id = p.product_id
WHERE p.product_id IS NULL;