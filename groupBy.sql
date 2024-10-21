

SELECT * FROM students;


SELECT country, COUNT(*), avg(age) FROM students GROUP BY country;

-- excute every group
SELECT country, avg(age) FROM students 
        GROUP BY country
        HAVING avg(age) > 20;

-- count student born in each year 
SELECT extract(year from dob) as birth_year, COUNT(*)
        FROM students
        GROUP BY birth_year;