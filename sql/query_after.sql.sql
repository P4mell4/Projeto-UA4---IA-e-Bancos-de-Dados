CREATE TABLE "mytable" (
  "SET search_path TO ua4;" text
);

INSERT INTO "mytable" ("SET search_path TO ua4;")
VALUES
('CREATE INDEX IF NOT EXISTS idx_orders_status_date'),
('ON orders(status'),
('CREATE INDEX IF NOT EXISTS idx_order_items_order'),
('ON order_items(order_id);'),
('CREATE INDEX IF NOT EXISTS idx_order_items_product'),
('ON order_items(product_id);'),
('VACUUM ANALYZE orders;'),
('VACUUM ANALYZE order_items;'),
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
('WHERE o.status=''paid'''),
('AND o.order_date >= NOW()-INTERVAL ''30 days'''),
('GROUP BY p.product_id'),
('ORDER BY revenue_30d DESC'),
('LIMIT 5;');
