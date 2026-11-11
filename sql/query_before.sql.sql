CREATE TABLE "mytable" (
  "SET search_path TO ua4;" text
);

INSERT INTO "mytable" ("SET search_path TO ua4;")
VALUES
('EXPLAIN ANALYZE'),
('SELECT'),
('p.product_id'),
('p.name'),
('SUM(oi.quantity * oi.unit_price) AS revenue_30d'),
('FROM orders o'),
('JOIN order_items oi'),
('ON oi.order_id = o.order_id'),
('JOIN products p'),
('ON p.product_id = oi.product_id'),
('WHERE o.status = ''paid'''),
('AND o.order_date >= NOW() - INTERVAL ''30 days'''),
('GROUP BY p.product_id'),
('ORDER BY revenue_30d DESC'),
('LIMIT 5;');
