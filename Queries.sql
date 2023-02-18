-- List the employee number, last name, first name, sex, and salary of each employee.
SELECT E.emp_no, E.last_name, E.first_name, E.sex, S.salary
--INTO emp_salary
FROM employees as E
left join salaries as S
On E.emp_no=S.emp_no
ORDER BY E.emp_no

-- List the first name, last name, and hire date for the employees who were hired in 1986.

-- List the manager of each department along with their department number, department name, employee number, last name, and first name.

-- List the department number for each employee along with that employee’s employee number, last name, first name, and department name.

-- List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.

-- List each employee in the Sales department, including their employee number, last name, and first name.

-- List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.

-- List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).