CREATE TABLE "mytable" (
  "SET search_path TO ua4;" text
);

INSERT INTO "mytable" ("SET search_path TO ua4;")
VALUES
('INSERT INTO customers (full_name'),
('VALUES'),
('(''Ana Souza'''),
('(''Bruno Lima'''),
('(''Carla Dias'''),
('INSERT INTO products (name'),
('VALUES'),
('(''Fone X200'''),
('(''Mouse Pro'''),
('(''Teclado Mecanico'''),
('INSERT INTO orders (customer_id'),
('VALUES'),
('(1'),
('(1'),
('(2'),
('(3'),
('INSERT INTO order_items(order_id'),
('VALUES'),
('(1'),
('(1'),
('(2'),
('(3'),
('(4');
