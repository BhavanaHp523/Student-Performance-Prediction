CREATE DATABASE student_analysis;
CREATE TABLE students (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50),
    gender VARCHAR(10),
    attendance INT,
    study_hours FLOAT,
    previous_score INT,
    final_score INT
);

INSERT INTO students (name, gender, attendance, study_hours, previous_score, final_score) VALUES
('Asha','Female',85,3.5,72,78),
('Ravi','Male',65,2.0,60,58),
('Kiran','Male',90,4.5,80,88),
('Sneha','Female',92,5.0,85,91),
('Arjun','Male',70,2.5,68,65),
('Pooja','Female',88,4.0,75,82),
('Rahul','Male',55,1.5,50,48),
('Divya','Female',78,3.0,70,74),
('Manoj','Male',82,3.8,74,79),
('Nisha','Female',95,5.5,88,94),

('Ajay','Male',60,2.2,58,57),
('Meena','Female',86,3.7,76,81),
('Suresh','Male',73,2.8,66,69),
('Lakshmi','Female',91,4.8,84,89),
('Vijay','Male',68,2.3,62,61),
('Anitha','Female',89,4.1,78,83),
('Karthik','Male',72,3.0,70,72),
('Deepa','Female',80,3.2,73,76),
('Harsha','Male',77,3.4,71,75),
('Priya','Female',93,5.2,86,92),

('Ramesh','Male',58,1.8,54,52),
('Bhavya','Female',84,3.6,77,80),
('Tejas','Male',69,2.6,64,63),
('Kavya','Female',87,4.2,79,85),
('Rohit','Male',75,3.1,72,74),
('Swathi','Female',90,4.7,83,88),
('Ganesh','Male',66,2.4,61,60),
('Neha','Female',82,3.9,74,79),
('Vikas','Male',71,2.9,67,70),
('Shreya','Female',94,5.4,87,93);


SELECT COUNT(*) FROM students;


SELECT id, name, gender, final_score
FROM students
ORDER BY final_score DESC
LIMIT 5;


SELECT gender, AVG(final_score) AS average_score
FROM students
GROUP BY gender;


SELECT id, name, attendance, final_score
FROM students
WHERE attendance < 75;


SELECT study_hours,
       AVG(final_score) AS average_score,
       COUNT(*) AS total_students
FROM students
GROUP BY study_hours
ORDER BY study_hours;
