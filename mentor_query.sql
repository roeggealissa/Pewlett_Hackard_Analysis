SELECT DISTINCT ON(emp.emp_no) emp.emp_no,
emp.first_name,
emp.last_name,
titles.title,
de.from_date,
de.to_date
INTO mentor
FROM employees AS emp
INNER JOIN dept_emp AS de
ON (emp.emp_no = de.emp_no)
INNER JOIN titles
ON (emp.emp_no = titles.emp_no)
WHERE (birth_date BETWEEN '1965-01-01' AND '1965-12-31') AND de.to_date = '9999-01-01'
ORDER BY emp_no ASC;