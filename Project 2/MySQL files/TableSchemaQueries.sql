CREATE TABLE orderdetails (
    row_id INT PRIMARY KEY,
    order_id VARCHAR(50),
    product_id VARCHAR(50),
    sales INT,
    quantity INT,
    discount INT,
    profit INT
);

CREATE TABLE orders (
    order_id VARCHAR(50) PRIMARY KEY,
    orderr_date DATE,
    ship_date DATE,
    ship_mode VARCHAR(50),
    customer_id VARCHAR(50),
    shipping_cost INT,
    order_priority VARCHAR(50),
    order_month INT,
    order_year INT,
    order_weekday INT,
    ship_month INT,
    ship_year INT,
    ship_weekday INT
);

CREATE TABLE products (
    product_id VARCHAR(50) PRIMARY KEY,
    categiry VARCHAR(50),
    sub_category VARCHAR(50),
    product_name VARCHAR(100)
);

CREATE TABLE customers (
    customer_id VARCHAR(50) PRIMARY KEY,
    customer_name VARCHAR(100),
    segment VARCHAR(50),
    city VARCHAR(50),
    state VARCHAR(50),
    country VARCHAR(50),
    postal_code INT
);