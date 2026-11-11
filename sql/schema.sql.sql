CREATE TABLE "mytable" (
  "CREATE SCHEMA IF NOT EXISTS ua4;" text
);

INSERT INTO "mytable" ("CREATE SCHEMA IF NOT EXISTS ua4;")
VALUES
('SET search_path TO ua4;'),
('CREATE TABLE customers ('),
('customer_id SERIAL PRIMARY KEY'),
('full_name VARCHAR(150) NOT NULL'),
('email VARCHAR(150) UNIQUE NOT NULL'),
('created_at TIMESTAMP NOT NULL DEFAULT NOW()'),
(');'),
('CREATE TABLE products ('),
('product_id SERIAL PRIMARY KEY'),
('name VARCHAR(150) NOT NULL'),
('category VARCHAR(80)'),
('price NUMERIC(12'),
('created_at TIMESTAMP NOT NULL DEFAULT NOW()'),
(');'),
('CREATE TABLE orders ('),
('order_id SERIAL PRIMARY KEY'),
('customer_id INT NOT NULL REFERENCES customers(customer_id)'),
('status VARCHAR(30) NOT NULL'),
('order_date TIMESTAMP NOT NULL DEFAULT NOW()'),
(');'),
('CREATE TABLE order_items ('),
('order_item_id SERIAL PRIMARY KEY'),
('order_id INT NOT NULL REFERENCES orders(order_id)'),
('product_id INT NOT NULL REFERENCES products(product_id)'),
('quantity INT NOT NULL'),
('unit_price NUMERIC(12'),
(');');
