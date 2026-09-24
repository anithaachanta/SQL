DROP DATABASE IF EXISTS studentss;
CREATE DATABASE studentss;
USE studentss;

DROP TABLE IF EXISTS grade;

CREATE TABLE grade (
    name_of_students VARCHAR(255) PRIMARY KEY,
    class VARCHAR(5),
    subjects VARCHAR(40),
    marks INT,
    grades VARCHAR(6)
);

INSERT INTO grade (name_of_students, class, subjects, marks, grades)
VALUES
('Alice', '10A', 'Math', 95, 'A+'),
('Bob', '10A', 'Science', 88, 'A');

