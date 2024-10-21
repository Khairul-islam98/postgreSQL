
CREATE TABLE students (
    student_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    lat_name VARCHAR(50),
    age INT,
    email VARCHAR(50),
    dob DATE,
    course VARCHAR(50),
    grade CHAR(2),
    country VARCHAR(50),
    blood_group VARCHAR(5)
);




INSERT INTO students (first_name, lat_name, age, email, dob, course, grade, country, blood_group)
VALUES
    ('John', 'Doe', 20, 'john.doe@example.com', '2003-05-15', 'Computer Science', 'A', 'USA', 'O+'),
    ('Jane', 'Smith', 22, 'jane.smith@example.com', '2001-09-20', 'Mathematics', 'B', 'Canada', 'A+'),
    ('Michael', 'Johnson', 19, 'michael.johnson@example.com', '2004-11-10', 'Physics', 'C', 'UK', 'B-'),
    ('Emily', 'Brown', 21, 'emily.brown@example.com', '2002-01-25', 'Chemistry', 'A', 'Australia', 'AB+'),
    ('Chris', 'Davis', 23, 'chris.davis@example.com', '2000-07-14', 'Biology', 'B', 'India', 'O-'),
    ('Anna', 'Miller', 20, 'anna.miller@example.com', '2003-02-18', 'History', 'A', 'Germany', 'A-'),
    ('David', 'Wilson', 18, 'david.wilson@example.com', '2005-08-30', 'Engineering', 'C', 'USA', 'B+'),
    ('Sarah', 'Moore', 19, 'sarah.moore@example.com', '2004-04-12', 'Literature', 'B', 'UK', 'O+'),
    ('Robert', 'Taylor', 21, 'robert.taylor@example.com', '2002-10-05', 'Art', 'A', 'France', 'A+'),
    ('Sophia', 'Anderson', 22, 'sophia.anderson@example.com', '2001-06-09', 'Design', 'B', 'Spain', 'AB-'),
    ('James', 'Thomas', 20, 'james.thomas@example.com', '2003-12-17', 'Music', 'C', 'Italy', 'B-'),
    ('Olivia', 'Jackson', 23, 'olivia.jackson@example.com', '2000-03-28', 'Philosophy', 'A', 'Japan', 'O-'),
    ('Daniel', 'White', 18, 'daniel.white@example.com', '2005-11-03', 'Law', 'B', 'Canada', 'O+'),
    ('Mia', 'Harris', 19, 'mia.harris@example.com', '2004-07-21', 'Medicine', 'A', 'Brazil', 'A-'),
    ('Matthew', 'Martin', 21, 'matthew.martin@example.com', '2002-04-11', 'Physics', 'C', 'Mexico', 'B+'),
    ('Ella', 'Garcia', 22, 'ella.garcia@example.com', '2001-02-16', 'Sociology', 'A', 'Argentina', 'O+'),
    ('Joshua', 'Martinez', 20, 'joshua.martinez@example.com', '2003-09-29', 'Geology', 'B', 'Peru', 'B-'),
    ('Grace', 'Lopez', 23, 'grace.lopez@example.com', '2000-08-13', 'Economics', 'A', 'Chile', 'AB+'),
    ('Alexander', 'Gonzalez', 18, 'alexander.gonzalez@example.com', '2005-05-24', 'Marketing', 'C', 'Colombia', 'O-'),
    ('Chloe', 'Perez', 19, 'chloe.perez@example.com', '2004-01-15', 'Political Science', 'B', 'Venezuela', 'A+'),
    ('Henry', 'Young', 21, 'henry.young@example.com', '2002-07-18', 'Anthropology', 'A', 'China', 'AB-'),
    ('Isabella', 'King', 22, 'isabella.king@example.com', '2001-11-23', 'Psychology', 'B', 'South Korea', 'B+'),
    ('Benjamin', 'Wright', 20, 'benjamin.wright@example.com', '2003-04-06', 'Literature', 'C', 'India', 'A-'),
    ('Lily', 'Scott', 23, 'lily.scott@example.com', '2000-06-12', 'Architecture', 'A', 'Italy', 'B-'),
    ('William', 'Adams', 18, 'william.adams@example.com', '2005-09-08', 'Engineering', 'B', 'Russia', 'O+'),
    ('Ava', 'Nelson', 19, 'ava.nelson@example.com', '2004-12-01', 'Fine Arts', 'A', 'Germany', 'AB+'),
    ('Ethan', 'Carter', 21, 'ethan.carter@example.com', '2002-02-14', 'Economics', 'B', 'USA', 'A+'),
    ('Sophia', 'Mitchell', 22, 'sophia.mitchell@example.com', '2001-05-17', 'Computer Science', 'C', 'UK', 'B-'),
    ('Jack', 'Perez', 20, 'jack.perez@example.com', '2003-10-04', 'Physics', 'A', 'Spain', 'O-'),
    ('Emily', 'Thompson', 23, 'emily.thompson@example.com', '2000-03-31', 'Law', 'B', 'France', 'A-'),
    ('Lucas', 'Walker', 18, 'lucas.walker@example.com', '2005-07-16', 'Biology', 'C', 'Japan', 'B+'),
    ('Mason', 'Harris', 19, 'mason.harris@example.com', '2004-01-07', 'Mathematics', 'A', 'Canada', 'O+'),
    ('Harper', 'Martinez', 21, 'harper.martinez@example.com', '2002-11-25', 'Design', 'B', 'Australia', 'A+'),
    ('Liam', 'Robinson', 22, 'liam.robinson@example.com', '2001-02-22', 'Medicine', 'C', 'Brazil', 'B-'),
    ('Charlotte', 'Clark', 20, 'charlotte.clark@example.com', '2003-06-14', 'Philosophy', 'A', 'UK', 'AB-'),
    ('Oliver', 'Lewis', 23, 'oliver.lewis@example.com', '2000-12-19', 'Geology', 'B', 'Italy', 'O+'),
    ('Amelia', 'Lee', 18, 'amelia.lee@example.com', '2005-04-02', 'Art', 'C', 'China', 'B+'),
    ('Noah', 'Hall', 19, 'noah.hall@example.com', '2004-08-30', 'Psychology', 'A', 'Venezuela', 'O-'),
    ('Evelyn', 'Allen', 21, 'evelyn.allen@example.com', '2002-03-23', 'Engineering', 'B', 'South Korea', 'A-'),
    ('Elijah', 'Young', 22, 'elijah.young@example.com', '2001-09-15', 'History', 'C', 'Peru', 'AB+'),
    ('Zoe', 'King', 20, 'zoe.king@example.com', '2003-07-11', 'Sociology', 'A', 'Colombia', 'B-'),
    ('Logan', 'Baker', 23, 'logan.baker@example.com', '2000-10-22', 'Marketing', 'B', 'Mexico', 'O+'),
    ('Abigail', 'Campbell', 18, 'abigail.campbell@example.com', '2005-06-04', 'Music', 'C', 'Chile', 'A+'),
    ('Lucas', 'Reed', 19, 'lucas.reed@example.com', '2004-11-13', 'Literature', 'A', 'Argentina', 'AB-'),
    ('Mila', 'Cook', 21, 'mila.cook@example.com', '2002-08-27', 'Anthropology', 'B', 'India', 'B+'),
    ('Jacob', 'Morgan', 22, 'jacob.morgan@example.com', '2001-01-05', 'Economics', 'C', 'Russia', 'A-'),
    ('Ella', 'Bell', 20, 'ella.bell@example.com', '2003-03-19', 'Physics', 'A', 'China', 'O+');


SELECT * FROM students;

SELECT first_name, email, age, dob FROM students;

SELECT email as student_email FROM students;

SELECT email as "student email" FROM students;

-- Sort by ascending and descending order
SELECT * FROM students  ORDER BY first_name ASC;
SELECT * FROM students  ORDER BY first_name DESC;
SELECT * FROM students  ORDER BY age DESC;

 
-- unique countries
SELECT DISTINCT country FROM students;


-- data filtering
SELECT * FROM students WHERE age > 20;

SELECT * FROM students
    WHERE country = 'USA' AND blood_group = 'O+';

SELECT * FROM students
    WHERE (country = 'USA' OR country = 'Canada') AND age = 20;

 -- first_name capital letter
SELECT UPPER(first_name) FROM students;

-- first_name last_name concat

SELECT concat(first_name, ' ', last_name) FROM students;

-- null value check
SELECT COALESCE(email, 'does not provided') FROM students;

SELECT * FROM students
    WHERE country in('USA', 'Canada', 'UK');
SELECT * FROM students
    WHERE country NOT in('USA', 'Canada', 'UK');

SELECT * FROM students
    WHERE age BETWEEN 20 AND 22;

SELECT * FROM students
    WHERE first_name LIKE '%n';
SELECT * FROM students
    WHERE first_name ILIKE '%A';


-- pagination

SELECT * FROM students   
    LIMIT 5
    OFFSET 5 * 0;
SELECT * FROM students   
    LIMIT 5
    OFFSET 5 * 1;