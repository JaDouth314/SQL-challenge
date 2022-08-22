-- #1. List the following details of each employee: employee number, last name, first name, sex, and salary.
SELECT * FROM employees;
SELECT * FROM salaries;

SELECT employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
FROM employees
JOIN salaries
ON employees.emp_no = salaries.emp_no

-- #2. List first name, last name, and hire date for employees who were hired in 1986.
SELECT first_name, last_name, hire_date
FROM employees
WHERE extract(year from hire_date) = 1986

-- #3. List the manager of each department with the following information: 
--    department number, department name, the manager's employee number, last name, first name.
SELECT * FROM dept_manager;
SELECT * FROM department;
SELECT * FROM employees;

SELECT dept_manager.emp_no, department.dept_no, department.dept_name, employees.last_name, employees.first_name
FROM dept_manager
LEFT JOIN department
ON dept_manager.dept_no = department.dept_no
LEFT JOIN employees
ON dept_manager.emp_no = employees.emp_no

-- #4. List the department of each employee with the following information: employee number, last name, first name, and department name.
SELECT * FROM employees;
SELECT * FROM dept_emp;



