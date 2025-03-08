CREATE PROCEDURE GetEmployeeDetails(IN emp_id INT)
BEGIN
    SELECT * FROM Employees WHERE EmployeeID = emp_id;
END;