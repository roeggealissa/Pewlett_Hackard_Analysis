SELECT emp.emp_no,
emp.first_name,
emp.last_name,
t.title,
t.from_date,
t.to_date
INTO retirement_employee_title
FROM employees AS emp
INNER JOIN titles as t
ON (emp.emp_no = t.emp_no)
WHERE birth_date BETWEEN '1952-01-01' AND '1955-12-31'
ORDER BY emp_no ASC;

SELECT DISTINCT ON (ret.emp_no) ret.emp_no,
ret.first_name,
ret.last_name,
ret.title,
ret.from_date,
ret.to_date

INTO retirement
FROM retirement_employee_title AS ret
ORDER BY emp_no ASC, to_date DESC;

SELECT title,
count(title)
INTO retirement_count
FROM retirement
GROUP BY title
ORDER BY count(title) DESC;