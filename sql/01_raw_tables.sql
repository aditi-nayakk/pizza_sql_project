'''Data Loading

CSV files are stored in the `/data` folder.
Data was loaded into PostgreSQL using pgAdmin`s Import/Export tool.

Alternative:
psql \copy can be used for loading:
\copy orders_raw FROM `data/orders.csv` CSV HEADER;  

'''
    
CREATE TABLE pizzas_raw (
    pizza_id TEXT,
    pizza_type_id TEXT,
    size TEXT,
    price TEXT
);

CREATE TABLE pizza_types_raw (
    pizza_type_id TEXT,
    name TEXT,
    category TEXT,
    ingredients TEXT
);

CREATE TABLE orders_raw (
    order_id TEXT,
    order_date TEXT,
    order_time TEXT
);

CREATE TABLE order_details_raw (
    order_details_id TEXT,
    order_id TEXT,
    pizza_id TEXT,
    quantity TEXT
);
