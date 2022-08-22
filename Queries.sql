-- #1. List the following details of each employee: employee number, last name, first name, sex, and salary.

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

SELECT dept_manager.emp_no, department.dept_no, department.dept_name, employees.last_name, employees.first_name
FROM dept_manager
LEFT JOIN department
ON dept_manager.dept_no = department.dept_no
LEFT JOIN employees
ON dept_manager.emp_no = employees.emp_no

-- #4. List the department of each employee with the following information: employee number, last name, first name, and department name.

SELECT employees.emp_no, employees.last_name, employees.first_name, dept_emp.emp_no, department.dept_name
FROM employees
JOIN dept_emp
ON employees.emp_no = dept_emp.emp_no
JOIN department
ON dept_emp.dept_no = department.dept_no

-- #5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."

SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%'

-- #6. List all employees in the Sales department, including their employee number, last name, first name, and department name.

SELECT employees.emp_no, employees.last_name, employees.first_name, dept_emp.emp_no, department.dept_name
FROM employees
JOIN dept_emp
ON employees.emp_no = dept_emp.emp_no
JOIN department
ON dept_emp.dept_no = department.dept_no
WHERE department.dept_name = 'Sales'

-- #7 List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

SELECT employees.emp_no, employees.last_name, employees.first_name, dept_emp.emp_no, department.dept_name
FROM employees
JOIN dept_emp
ON employees.emp_no = dept_emp.emp_no
INNER JOIN department
ON dept_emp.dept_no = department.dept_no
WHERE department.dept_name in ('Sales', 'Development')

-- #8. List the frequency count of employee last names (i.e., how many employees share each last name) in descending order.
SELECT last_name, COUNT(*) as "Name Frequency"
FROM employees
GROUP BY last_name
ORDER BY "Name Frequency" desc


