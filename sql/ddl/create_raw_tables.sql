
CREATE TABLE IF NOT EXISTS raw_orders (
    source_row_id INTEGER,
    order_id VARCHAR(50),
    customer_id VARCHAR(50),
    order_date TIMESTAMP,
    product_id VARCHAR(50),
    quantity INTEGER,
    unit_price NUMERIC(10,2),
    order_status VARCHAR(30)
);

CREATE TABLE IF NOT EXISTS raw_customers (
    customer_id VARCHAR(50),
    customer_name VARCHAR(100),
    city VARCHAR(100)
);

CREATE TABLE IF NOT EXISTS raw_products (
    product_id VARCHAR(50),
    product_name VARCHAR(100),
    category VARCHAR(100)
);

CREATE TABLE IF NOT EXISTS raw_payments (
    payment_id VARCHAR(50),
    order_id VARCHAR(50),
    payment_method VARCHAR(50),
    payment_amount NUMERIC(10,2)
);
