

CREATE TABLE employees(
    employee_id SERIAL PRIMARY KEY,
   employee_name VARCHAR(100) NOT NULL,
    hire_date DATE,
    department_name VARCHAR(50),
    salary DECIMAL(10, 2)
);

DROP Table employees;

INSERT INTO employees (employee_name, hire_date, department_name, salary) VALUES
('Kate', '2020-04-01', 'HR', 3200.50),
('Leo', '2020-04-15', 'IT', 4500.75),
('Mia', '2020-05-05', 'HR', 2800.00),
('Noah', '2020-05-10', 'IT', 3800.25),
('Olivia', '2020-06-05', 'HR', 2200.75),
('Paul', '2020-06-15', 'IT', 2500.00),
('Quinn', '2020-07-20', 'HR', 3000.50),
('Ruth', '2020-08-01', 'IT', 4200.75),
('Sam', '2020-08-10', 'IT', 5000.25),
('Tina', '2020-09-05', 'HR', 3500.00),
('Uma', '2020-09-15', 'IT', 3700.75),
('Victor', '2020-10-10', 'HR', 2700.25),
('Wendy', '2020-10-25', 'IT', 4300.50),
('Xander', '2020-11-01', 'HR', 3900.75),
('Yara', '2020-11-10', 'IT', 5200.00),
('Zane', '2020-11-20', 'HR', 4100.25);


SELECT * FROM employees;

-- Retrive all employees whose salary is greater than the highest salary of the HR department.

SELECT max(salary) FROM employees WHERE department_name = 'HR';

SELECT * 
FROM employees 
WHERE salary > (
    SELECT MAX(salary) 
    FROM employees 
    WHERE department_name = 'HR'
);
