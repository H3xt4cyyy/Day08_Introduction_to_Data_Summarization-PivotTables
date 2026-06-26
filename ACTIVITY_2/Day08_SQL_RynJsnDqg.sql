-- Q1: Headcount per department
-- Result (top 3):
-- IT | 13
-- Sales | 12
-- Finance | 10
SELECT 
    department, 
    COUNT(employee_id) AS headcount
FROM employees
GROUP BY department
ORDER BY headcount DESC;


-- Q2: Total salary per city, sorted descending
-- Result (top 3):
-- Manila | 1175790
-- Cebu City | 511870
-- Davao City | 360600
SELECT 
    city, 
    SUM(salary) AS total_salary
FROM employees
GROUP BY city
ORDER BY total_salary DESC;


-- Q3: Average salary per position, rounded to 2 decimals, sorted descending
-- Result (top 3):
-- IT Manager | 85000
-- HR Manager | 82000
-- Finance Manager | 78800
SELECT 
    position, 
    ROUND(AVG(salary), 2) AS avg_salary
FROM employees
GROUP BY position
ORDER BY AVG(salary) DESC;

-- Q4: Headcount per (department, city) combination
-- Result (top 3):
-- IT | Manila | 7
-- Sales | Manila | 6
-- Finance | Manila | 5
SELECT 
    department, 
    city, 
    COUNT(employee_id) AS headcount
FROM employees
GROUP BY department, city
ORDER BY headcount DESC;


-- Q5: Headcount per hire year
-- Result (top 3):
-- 2024 | 12
-- 2023 | 11
-- 2022 | 9
SELECT 
    substr(hire_date, 1, 4) AS hire_year, 
    COUNT(employee_id) AS headcount
FROM employees
GROUP BY hire_year
ORDER BY headcount DESC;