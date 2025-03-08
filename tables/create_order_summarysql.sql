CREATE TABLE products (
  product_id SERIAL PRIMARY KEY,
  name VARCHAR(100) NOT NULL,
  description TEXT,
  price DECIMAL(10, 2) NOT NULL,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE orders (
  order_id SERIAL PRIMARY KEY,
  product_id INT REFERENCES products(product_id),
  quantity INT NOT NULL,
  order_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE FUNCTION get_order_summary() RETURNS TABLE(order_id INT, product_name VARCHAR, total_price DECIMAL) AS $$
BEGIN
  RETURN QUERY
  SELECT o.order_id, p.name, (o.quantity * p.price) AS total_price
  FROM orders o
  JOIN products p ON o.product_id = p.product_id;
END;
$$ LANGUAGE plpgsql;