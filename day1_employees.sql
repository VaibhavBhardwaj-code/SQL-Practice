-- Day 1: Employees table practice (fake data)
-- Practiced CREATE TABLE, INSERT, and SELECT

CREATE TABLE employees (
    id INT,
    name VARCHAR(50),
    age INT,
    city VARCHAR(50),
    salary INT,
    department VARCHAR(50)
);

INSERT INTO employees (id, name, age, city, salary, department) VALUES
(1, 'Amit Sharma', 28, 'Delhi', 65000, 'IT'),
(2, 'Priya Singh', 25, 'Mumbai', 55000, 'HR'),
(3, 'Rahul Kumar', 32, 'Bangalore', 75000, 'Marketing'),
(4, 'Sneha Verma', 24, 'Delhi', 48000, 'IT'),
(5, 'Vikash Yadav', 30, 'Pune', 70000, 'Sales'),
(6, 'Anjali Gupta', 27, 'Mumbai', 60000, 'Finance'),
(7, 'Rohan Mehta', 29, 'Bangalore', 68000, 'IT'),
(8, 'Kavya Patel', 26, 'Delhi', 52000, 'HR');

SELECT * FROM employees;

-- End of Day 1 practice