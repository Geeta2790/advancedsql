CREATE PROCEDURE GetEmployeeSales(IN emp_id INT)
BEGIN
    SELECT e.name, SUM(s.amount) AS total_sales
    FROM employees e
    JOIN sales s ON e.id = s.employee_id
    WHERE e.id = emp_id
    GROUP BY e.name;
END;