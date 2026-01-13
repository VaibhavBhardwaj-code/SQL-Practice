-- Day 3 (12 Jan 2026): ORDER BY, LIMIT, ASC/DESC Practice
CREATE DATABASE IF NOT EXISTS practice_work;
USE practice_work;

CREATE TABLE IF NOT EXISTS employees (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    salary INT,
    city VARCHAR(50),
    department VARCHAR(50)
);

INSERT IGNORE INTO employees VALUES
(1, 'Amit', 28, 65000, 'Delhi', 'IT'),
(2, 'Priya', 25, 55000, 'Mumbai', 'HR'),
(3, 'Rahul', 32, 75000, 'Bangalore', 'Marketing'),
(4, 'Sneha', 24, 48000, 'Delhi', 'IT'),
(5, 'Vikash', 30, 70000, 'Pune', 'Sales'),
(6, 'Anjali', 27, 60000, 'Mumbai', 'Finance'),
(7, 'Rohan', 29, 68000, 'Bangalore', 'IT'),
(8, 'Kavya', 26, 52000, 'Delhi', 'HR');

-- Question-1: Employees ko salary ke hisab se ascending order mein sort karo
SELECT * FROM employees ORDER BY salary ASC;

-- Question-2: Salary ke hisab se descending order mein sort karo.
SELECT * FROM employees ORDER BY salary DESC; 

-- QUESTION-3: Age ke hisab se sort karo.
SELECT * FROM employees ORDER BY age ASC;

 -- Qustion-4: Department ke hisab se sort karo.
 SELECT * FROM employees ORDER BY department ASC;
 
 -- Question-5: Top 3 highest salary wale employees dikhao.
 SELECT * FROM employees ORDER BY salary DESC LIMIT 3;
 
 -- Qusetion-6: Bottom 3 lowest salary wale employees dikhao.
 SELECT * FROM employees ORDER BY salary ASC LIMIT 3;
 
 -- Question-7: Delhi mein rehne wale employees ko salary ke hisab se descending order mein sort karo.
 SELECT * FROM employees WHERE city IN ('Delhi') ORDER BY salary DESC ;
 
 -- Question-8: IT department wale employees ko age ke hisab se ascending order mein sort karo.
 SELECT * FROM employees WHERE department in ('IT') ORDER BY age ASC; 
 
 -- Question-9: Top 5 oldest employees dikhao.
 SELECT * FROM employees ORDER BY age DESC LIMIT 5;
 
 -- Question-10: Name ke alphabetical order mein saare employees sort karo (A to Z).
 SELECT * FROM employees ORDER BY name ASC;
