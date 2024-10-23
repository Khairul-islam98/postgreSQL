-- Active: 1729099285669@@127.0.0.1@5432@practicedb


CREATE TABLE employees (
    employee_id SERIAL PRIMARY KEY,
    employee_name VARCHAR(100),
    department_id INT REFERENCES departments(department_id),
    salary DECIMAL(10, 2),
    hire_date DATE
);

CREATE TABLE departments (
    department_id SERIAL PRIMARY KEY,
    department_name VARCHAR(100)
);

INSERT INTO departments (department_name)
VALUES
    ('Engineering'),
    ('Marketing'),
    ('Human Resources'),
    ('Finance'),
    ('Sales');
INSERT INTO employees (employee_name, department_id, salary, hire_date)
VALUES
    ('John Doe', 1, 75000.00, '2020-06-15'),
    ('Jane Smith', 2, 65000.00, '2019-04-10'),
    ('Alice Johnson', 3, 58000.00, '2021-01-25'),
    ('Robert Brown', 1, 80000.00, '2018-11-05'),
    ('Emily Davis', 4, 90000.00, '2017-09-19'),
    ('Michael Wilson', 5, 70000.00, '2022-03-08'),
    ('Sarah Lee', 2, 67000.00, '2021-05-30'),
    ('David Clark', 3, 62000.00, '2020-12-01'),
    ('Susan Martin', 4, 92000.00, '2016-08-23'),
    ('James Miller', 5, 68000.00, '2019-10-10');

DROP Table departments;
DROP Table employees;

SELECT * FROM departments;
SELECT * FROM employees;


SELECT * FROM employees
JOIN departments ON employees.department_id = departments.department_id;


SELECT * FROM employees
JOIN departments USING(department_id);

SELECT department_name, round(avg(salary)) as average_salary FROM employees
JOIN departments USING(department_id)
GROUP BY department_name;
SELECT department_name, count(*) as member FROM employees
JOIN departments USING(department_id)
GROUP BY department_name;

SELECT department_name, round(avg(salary)) as average_salary FROM employees
JOIN departments USING(department_id)
GROUP BY department_name
ORDER BY average_salary DESC
LIMIT 1;


SELECT extract(YEAR FROM hire_date) as hire_year, count(*) FROM employees
GROUP BY hire_year;



CREATE TABLE orders(
    order_id SERIAL PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    total_amount DECIMAL(10, 2)
)

INSERT INTO orders (customer_id, order_date, total_amount) VALUES
(1, '2022-01-05', 100.50),
(2, '2020-01-10', 200.75),
(1, '2023-01-15', 300.25),
(3, '2022-02-05', 150.50),
(2, '2024-02-10', 250.75),
(3, '2021-02-15', 350.25),
(1, '2021-03-05', 200.50),
(2, '2022-07-10', 300.75),
(2, '2024-03-15', 400.25),
(4, '2022-03-15', 400.25);

DROP TABLE orders;

SELECT * FROM orders;

-- Find customers who have placed more than 2 orders and calculate the total amount  spent by each of these customers.

SELECT customer_id, count(*) as order_count, sum(total_amount) as total_spent FROM orders
GROUP BY customer_id HAVING count(order_id) > 2;

-- Find the total amount orders placed each month in the year 2022.

SELECT extract(MONTH FROM order_date) as month, sum(total_amount) as total_amount FROM orders
WHERE extract(YEAR FROM order_date) = 2022
GROUP BY month;