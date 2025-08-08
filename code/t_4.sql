CREATE TABLE employees_01 (
    emp_id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    department TEXT,
    age INTEGER,
    salary REAL,
    hire_date DATE
);

INSERT INTO  employees_01 (emp_id, name, department, age, salary, hire_date) VALUES
(1, 'Yash Yadav', 'IT', 25, 60000, '2022-01-01'),
(2, 'Anjali Rao', 'HR', 28, 50000, '2021-05-12'),
(3, 'Amit Desai', 'IT', 30, 75000, '2020-03-18'),
(4, 'Priya Deshmukh', 'Finance', 27, 55000, '2023-02-10'),
(5, 'Rahul Gupta', 'HR', 24, 48000, '2022-06-25');

SELECT department, SUM(salary) AS total_salary
FROM  employees_01
GROUP BY department;

SELECT department, AVG(salary) AS avg_salary
FROM  employees_01
GROUP BY department;

SELECT department, COUNT(*) AS total_employees
FROM  employees_01
GROUP BY department;

SELECT department, AVG(salary) AS avg_salary
FROM  employees_01
GROUP BY department
HAVING AVG(salary) > 55000;


SELECT department, MAX(salary) AS highest_salary
FROM employees_01
GROUP BY department;


