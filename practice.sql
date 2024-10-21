

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