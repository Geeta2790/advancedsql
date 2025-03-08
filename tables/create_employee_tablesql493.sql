CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    HireDate DATE NOT NULL,
    Salary DECIMAL(10, 2) NOT NULL,
    DepartmentID INT,
    FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID)
);

INSERT INTO Employees (EmployeeID, FirstName, LastName, HireDate, Salary, DepartmentID) VALUES
(1, 'John', 'Doe', '2022-01-15', 60000.00, 1),
(2, 'Jane', 'Smith', '2021-03-22', 65000.00, 2),
(3, 'Emily', 'Johnson', '2020-07-30', 70000.00, 1);