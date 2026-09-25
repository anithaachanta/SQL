CREATE DATABASE COLLEGE_DB;
USE COLLEGE_DB;

-- 1.CREATE DATABASE

CREATE TABLE people(
    student_id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    age INT,
    email VARCHAR(100) UNIQUE,
    gender CHAR(1),
    course VARCHAR(50) DEFAULT 'ECE',
    Marks DECIMAL(5,2),
    Admission_date DATE
);

SELECT * FROM people;

INSERT INTO people
(student_id,name,age,email,gender,course,Marks,Admission_date)
VALUES
(1,'Anitha',21,'ani@gmail.com','F','ECE',91.75,'2026-09-21'),
(2,'chinna',24,'chinna@gmail.com','M','ECE',93.75,'2026-09-21');

SELECT name,gender,course 
FROM people;