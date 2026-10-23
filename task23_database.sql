-- Task 23: Create Tables and Insert Data in a Cloud Database
-- Platform: Amazon RDS for MySQL
-- Database: task23db

USE task23db;

-- Create the students table
CREATE TABLE students (
    student_id INT PRIMARY KEY AUTO_INCREMENT,
    student_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE,
    course VARCHAR(50),
    marks DECIMAL(5,2)
);

-- Create the courses table
CREATE TABLE courses (
    course_id INT PRIMARY KEY AUTO_INCREMENT,
    course_name VARCHAR(100) NOT NULL,
    duration_months INT NOT NULL,
    course_fee DECIMAL(10,2) NOT NULL
);

-- Insert sample courses
INSERT INTO courses (course_name, duration_months, course_fee)
VALUES
('Cloud Computing', 6, 15000.00),
('Linux Administration', 3, 8000.00),
('AWS Fundamentals', 4, 12000.00);

-- Insert sample students
INSERT INTO students (student_name, email, course, marks)
VALUES
('Aarav Sharma', 'aarav.sharma@example.com', 'Cloud Computing', 85.50),
('Priya Patil', 'priya.patil@example.com', 'Linux Administration', 91.00),
('Rahul Deshmukh', 'rahul.deshmukh@example.com', 'AWS Fundamentals', 78.50),
('Sneha Joshi', 'sneha.joshi@example.com', 'Cloud Computing', 88.00),
('Vikram More', 'vikram.more@example.com', 'Linux Administration', 82.00);

-- Verify inserted data
SELECT * FROM courses;
SELECT * FROM students;

-- Verify total records
SELECT
    (SELECT COUNT(*) FROM courses) AS total_courses,
    (SELECT COUNT(*) FROM students) AS total_students;
