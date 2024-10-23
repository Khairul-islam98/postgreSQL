-- Active: 1729099285669@@127.0.0.1@5432@practicedb

SELECT * FROM employees;


CREATE VIEW dep_avg_salary 
AS
SELECT department_name, round(avg(salary)) as average_salary FROM employees GROUP BY department_name;

SELECT * FROM dep_avg_salary;