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

-- Question 1: Sort all employees by salary in ascending order (lowest to highest).
SELECT * FROM employees ORDER BY salary ASC;

-- Question 2: Sort employees by salary in descending order (highest to lowest).
SELECT * FROM employees ORDER BY salary DESC;

-- Question 3: Sort employees by age in ascending order (youngest to oldest).
SELECT * FROM employees ORDER BY age ASC;

-- Question 4: Sort employees by department in alphabetical order.
SELECT * FROM employees ORDER BY department ASC;

-- Question 5: Show the top 3 employees with the highest salary.
SELECT * FROM employees ORDER BY salary DESC LIMIT 3;

-- Question 6: Show the bottom 3 employees with the lowest salary.
SELECT * FROM employees ORDER BY salary ASC LIMIT 3;

-- Question 7: Sort employees living in Delhi by salary in descending order.
SELECT * FROM employees WHERE city = 'Delhi' ORDER BY salary DESC;

-- Question 8: Sort employees in the IT department by age in ascending order.
SELECT * FROM employees WHERE department = 'IT' ORDER BY age ASC;

-- Question 9: Show the top 5 oldest employees.
SELECT * FROM employees ORDER BY age DESC LIMIT 5;

-- Question 10: Sort all employees by name in alphabetical order (A to Z).
SELECT * FROM employees ORDER BY name ASC;
