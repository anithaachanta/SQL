CREATE DATABASE example_db;
USE example_db;

CREATE TABLE college_students(
    id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    age INT CHECK(age>=18),
    dept VARCHAR(50),
    marks INT CHECK (marks BETWEEN 0 AND 100),
    email VARCHAR(100) UNIQUE,
    status VARCHAR(20) DEFAULT 'Active'
    );
    
    SELECT *FROM college_students;
    
    INSERT INTO college_students
    (id,name,age,dept,marks,email)
    VALUES
   
    (4,'vara',23,'ECE',96,'vara@gmail.com'),
    (5,'bhanu',23,'ECE',97,'bhanu@gmail.com'),
    (6,'priya',23,'ECE',97,'priya@gmail.com');
    
   
    
    -- Display all students--
    SELECT *FROM college_students;
    
    -- Display only:name dept marks --
    SELECT name,dept,marks
    FROM college_students;
    
    -- Find students whose marks are greater than 80
SELECT name 
FROM college_students
WHERE marks>80;
    
    -- Find students whose marks are greater than 80 and display them 
    -- from highest marks to lowest marks.
    
SELECT name,marks
FROM college_students
WHERE marks>80
ORDER BY marks DESC;
    
-- Find the student with the highest marks.

SELECT name,marks
FROM college_students
ORDER BY marks DESC LIMIT 1;

-- Change priya marks to 80.
UPDATE college_students
SET marks=90
WHERE id=6;

-- ind students who: belong to ECE AND have marks greater than 80

SELECT *
FROM college_students
WHERE dept='ECE' AND marks>80;

SELECT *
FROM college_students
WHERE dept='ECE' OR 'CSE';

-- Find students whose marks are between 70 and 90.

SELECT *
FROM college_students
WHERE marks BETWEEN 90 AND 100;

-- Find students whose department is either ECE or CSE

SELECT *
FROM college_students
WHERE dept IN ('ECE');

-- Find students whose names start with A
SELECT *
FROM college_students
WHERE name LIKE 'A%';

-- Delete the student whose id=6

DELETE  FROM 
college_students
WHERE id=6;

-- Add a new column: city with dataytpe varchar

ALTER  TABLE college_students
ADD city VARCHAR(70);


