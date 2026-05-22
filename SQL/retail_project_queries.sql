USE retail_project;
CREATE VIEW customer_orders_view AS
SELECT 
    c.customer_id,
    c.first_name,
    c.last_name,
    o.order_id,
    o.order_date
FROM customers c
JOIN orders_table o
ON c.customer_id = o.customer_id;
CREATE VIEW product_brand_view AS
SELECT
    p.product_id,
    p.product_name,
    b.brand_name,
    p.list_price
FROM products p
JOIN brands b
ON p.brand_id = b.brand_id;
CREATE VIEW product_category_view AS
SELECT
    p.product_id,
    p.product_name,
    c.category_name
FROM products p
JOIN categories c
ON p.category_id = c.category_id;
CREATE VIEW store_orders_view AS
SELECT
    s.store_name,
    o.order_id,
    o.order_date
FROM stores s
JOIN orders_table o
ON s.store_id = o.store_id;
