CREATE VIEW pizzas_clean AS 
SELECT
    pizza_id,
    pizza_type_id,
    UPPER(size) AS size,
    CAST(price AS NUMERIC) AS price
FROM pizzas_raw;

CREATE VIEW pizza_types_clean AS
SELECT 
    pizza_type_id,
    name,
    category,
    ingredients
FROM pizza_types_raw;

CREATE VIEW orders_clean AS
SELECT
    CAST(order_id AS INT) AS order_id,
    CAST(order_date AS DATE) AS order_date,
    CAST(order_time AS TIME) AS order_time
FROM orders_raw;

CREATE VIEW order_details_clean AS
SELECT
    CAST(order_details_id AS INT) AS order_details_id,
    CAST(order_id AS INT) AS order_id,
    pizza_id,
    CAST(quantity AS INT) AS quantity
FROM order_details_raw;
