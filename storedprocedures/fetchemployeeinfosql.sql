CREATE PROCEDURE GetEmployeeDetails(IN emp_id INT)
BEGIN
    SELECT name, position, salary
    FROM employees
    WHERE id = emp_id;
END;