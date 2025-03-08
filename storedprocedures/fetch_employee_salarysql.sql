CREATE PROCEDURE GetEmployeeSalary(IN emp_id INT)
BEGIN
    SELECT salary FROM employees WHERE id = emp_id;
END;