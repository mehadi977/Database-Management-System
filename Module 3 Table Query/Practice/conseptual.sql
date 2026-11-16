CREATE DATABASE UniversityDB;
USE UniversityDB;
CREATE TABLE Students(
	StudentID INT PRIMARY KEY,
    FirstName VARCHAR(30),
    LastName VARCHAR(30),
    Age INT,
    Department VARCHAR(20),
    CGPA DECIMAL(3,2),
    City VARCHAR(30)
    );
INSERT INTO Students VALUES
(201, 'Arif', 'Rahman', 21, 'CSE', 3.85, 'Dhaka'),
(202, 'Nusrat', 'Jahan', 22, 'EEE', 3.45, 'Chattogram'),
(203, 'Fahim', 'Hasan', 20, 'CSE', 3.92, 'Sylhet'),
(204, 'Mim', 'Akter', 23, 'BBA', 3.30, 'Dhaka'),
(205, 'Tanvir', 'Hossain', 24, 'EEE', 3.75, 'Rajshahi'),
(206, 'Sadia', 'Islam', 21, 'CSE', 3.60, 'Khulna'),
(207, 'Rakib', 'Ahmed', 22, 'English', 3.15, 'Barishal'),
(208, 'Tania', 'Sultana', 20, 'BBA', 3.50, 'Dhaka');

SELECT * FROM Students;
-- 1.
SELECT FirstName, CGPA FROM Students;

-- 2.
SELECT  DISTINCT Department FROM Students;

-- 3.
SELECT * FROM Students WHERE age > 21;

-- 4.
SELECT * FROM Students ORDER BY CGPA DESC;

-- 5.
SELECT * 
FROM Students 
ORDER BY cgpa DESC
LIMIT 3;

-- 6.
SELECT * 
FROM students
ORDER BY cgpa DESC
LIMIT 100 OFFSET 5;

-- 7.
SELECT *
FROM students
WHERE city='Dhaka';

-- 8. 
SELECT FirstName,Department, CGPA
FROM Students
WHERE (department='CSE' OR department='EEE') AND cgpa>=3.50
ORDER BY cgpa DESC;

