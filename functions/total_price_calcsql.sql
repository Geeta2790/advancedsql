CREATE FUNCTION calculate_total_price(item_id INT, quantity INT)
RETURNS DECIMAL(10, 2) AS
$$
DECLARE
    price DECIMAL(10, 2);
BEGIN
    SELECT unit_price INTO price FROM items WHERE id = item_id;
    RETURN price * quantity;
END;
$$ LANGUAGE plpgsql;