# creating database edu_institute
CREATE DATABASE edu_institute;
use edu_institute;

# Creating table students in database edu_institute
CREATE TABLE students(
studen_id INT PRIMARY KEY,
name VARCHAR(50),
age INT,
gender CHAR(1),
enrollment_date DATE,
program VARCHAR(50)
);
DESC students;

#Inserting Values in table students
INSERT INTO students(studen_id, name, age, gender, enrollment_date, program)
VALUES
    (345, 'Erick Muthama', 25, 'M', '2024-02-12', 'Data Science'),
    (245, 'Fiona Wangui', 32, 'F', '2024-02-15', 'Data Analyst'),
    (342, 'Timo Wanyonyi', 24, 'M', '2024-02-06', 'Data Engineer'),
    (347, 'Christin Wakio', 23, 'F', '2024-02-09', 'Data Science'),
    (343, 'Paul Kagame', 22, 'M', '2024-01-29', 'Software developer');
    
# Correcting my column name studen_id to student_id
ALTER TABLE students rename column studen_id to student_id;

# Selecting students who are enrolled data science program
select * from students where program='Data Science';

# Calculating the totla number of student
SELECT COUNT(*) AS `Total Students` FROM students;

# Finding the Current Date
SELECT CURDATE() AS `Today's Date`;
desc students;

# Selecting the student names and their enrollment dates
SELECT UPPER(name) as Student_Names, enrollment_date from students;

# Count the number of students in each program and arrange them in descending order
SELECT program, COUNT(*) AS `Number of Students`
FROM students
GROUP BY program
ORDER BY `Number of Students` DESC;

# Select the youngest the student
SELECT name, age
FROM students
ORDER BY age ASC
LIMIT 1; # Returns the youngest student







