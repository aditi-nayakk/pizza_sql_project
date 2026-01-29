# pizza-sql-project

## Data Loading

CSV files are stored in the `/data` folder.
Data was loaded into PostgreSQL using pgAdmin's Import/Export tool.

Alternative:
psql \copy can be used for loading:
\copy orders_raw FROM 'data/orders.csv' CSV HEADER;
