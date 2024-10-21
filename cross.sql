

CREATE TABLE employees (
    emp_id INT,
    emp_name VARCHAR(50),
    dept_id INT
);

CREATE TABLE departments (
    dept_id INT,
    dept_name VARCHAR(50)
);

INSERT INTO employees (emp_id, emp_name, dept_id)
VALUES
    (101, 'John Doe', 1),
    (102, 'Jane Smith', 2),
    (103, 'Alice Johnson', 3),
    (104, 'Robert Brown', 1),
    (105, 'Emily Davis', 4),
    (106, 'Michael Wilson', 5),
    (107, 'Sarah Lee', 2),
    (108, 'David Clark', 3),
    (109, 'Susan Martin', 4),
    (110, 'James Miller', 5);
INSERT INTO departments (dept_id, dept_name)
VALUES
    (1, 'Engineering'),
    (2, 'Marketing'),
    (3, 'Human Resources'),
    (4, 'Finance'),
    (5, 'Sales');



SELECT * FROM employees;

SELECT * FROM departments;

-- cross join
SELECT * FROM departments
CROSS JOIN employees;

-- natural join
SELECT * FROM departments
NATURAL JOIN employees;