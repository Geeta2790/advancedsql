CREATE FUNCTION calculate_total_sales(start_date DATE, end_date DATE)
RETURNS DECIMAL(10, 2)
BEGIN
    DECLARE total_sales DECIMAL(10, 2);
    SELECT SUM(amount) INTO total_sales
    FROM sales
    WHERE sale_date BETWEEN start_date AND end_date;
    RETURN COALESCE(total_sales, 0);
END;