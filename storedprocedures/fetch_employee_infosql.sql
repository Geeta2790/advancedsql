CREATE PROCEDURE GetEmployeeDetails (IN empID INT)
BEGIN
    SELECT e.Name, e.Position, d.DepartmentName
    FROM Employees e
    JOIN Departments d ON e.DepartmentID = d.DepartmentID
    WHERE e.EmployeeID = empID;
END;