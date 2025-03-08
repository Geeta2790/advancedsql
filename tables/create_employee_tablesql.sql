CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    hire_date DATE NOT NULL,
    salary DECIMAL(10, 2) CHECK (salary > 0)
);

INSERT INTO employees (employee_id, first_name, last_name, email, hire_date, salary) VALUES
(1, 'John', 'Doe', 'john.doe@example.com', '2023-01-15', 60000.00),
(2, 'Jane', 'Smith', 'jane.smith@example.com', '2023-02-20', 65000.00);