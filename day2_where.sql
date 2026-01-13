-- Day 2 (11 Jan 2026): WHERE Clause & Filtering Practice
CREATE DATABASE practice_work;
USE practice_work;

CREATE TABLE employees (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    salary INT,
    city VARCHAR(50),
    department VARCHAR(50)
);

INSERT INTO employees VALUES
(1, 'Amit', 28, 65000, 'Delhi', 'IT'),
(2, 'Priya', 25, 55000, 'Mumbai', 'HR'),
(3, 'Rahul', 32, 75000, 'Bangalore', 'Marketing'),
(4, 'Sneha', 24, 48000, 'Delhi', 'IT'),
(5, 'Vikash', 30, 70000, 'Pune', 'Sales'),
(6, 'Anjali', 27, 60000, 'Mumbai', 'Finance'),
(7, 'Rohan', 29, 68000, 'Bangalore', 'IT'),
(8, 'Kavya', 26, 52000, 'Delhi', 'HR');

-- Question 1: Select all employees living in Delhi.
SELECT * FROM employees WHERE city IN ('Delhi');

-- Question 2: List employees with salary greater than 60000.
SELECT * FROM employees WHERE salary > 60000;

-- Question 3: Employees with age less than 25 or greater than 30.
SELECT * FROM employees WHERE (age < 25 OR age > 30);

-- Question 4: Employees in department 'IT' or 'HR'.
SELECT * FROM employees WHERE department IN ('IT', 'HR');

-- Question 5: Employees whose name starts with 'A'.
SELECT * FROM employees WHERE name LIKE 'A%';

-- Question 6: Employees with salary between 50000 and 70000.
SELECT * FROM employees WHERE salary BETWEEN 50000 AND 70000;

-- Question 7: Employees not living in 'Delhi' or 'Mumbai'.
SELECT * FROM employees WHERE city NOT IN ('Delhi', 'Mumbai');

-- Question 8: Employees with NULL salary.
SELECT * FROM employees WHERE salary IS NULL;

-- Question 9: Employees with age 25 AND department 'IT'.
SELECT * FROM employees WHERE age = 25 AND department = 'IT';

-- Question 10: Employees with salary less than 60000 OR living in 'Bangalore'.
SELECT * FROM employees WHERE salary < 60000 OR city = 'Bangalore';

-- Question 11: Employees whose name contains the letter 'a'.
SELECT * FROM employees WHERE name LIKE '%a%';

-- Question 12: Employees with salary greater than 55000 AND age less than 28.
SELECT * FROM employees WHERE salary > 55000 AND age < 28;

-- Question 13: Employees not in department 'Sales'.
SELECT * FROM employees WHERE department NOT IN ('Sales');

-- Question 14: Employees whose name starts with 'R' AND salary greater than 60000.
SELECT * FROM employees WHERE name LIKE 'R%' AND salary > 60000;

-- Question 15: Employees with age between 25 and 30 AND living in 'Delhi' or 'Pune'.
SELECT * FROM employees WHERE age BETWEEN 25 AND 30 AND city IN ('Delhi', 'Pune');

-- End of Day 2 practice
