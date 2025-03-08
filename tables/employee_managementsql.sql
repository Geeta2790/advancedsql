CREATE TABLE employee (
    id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    department_id INT,
    hire_date DATE NOT NULL,
    salary DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (department_id) REFERENCES department(id)
);

INSERT INTO employee (id, name, department_id, hire_date, salary)
VALUES
    (1, 'John Doe', 1, '2020-01-15', 60000.00),
    (2, 'Jane Smith', 2, '2021-03-22', 75000.00),
    (3, 'Alice Johnson', 1, '2022-07-30', 50000.00);

SELECT * FROM employee WHERE salary > 55000 ORDER BY hire_date DESC;