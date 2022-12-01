---retrieve number of retiring employees
SELECT e.emp_no, e.first_name, e.last_name, t.title, t.from_date, t.to_date
INTO retirement_titles
FROM employees AS 'e'
JOIN titles AS 't'
ON e.emp_no = t.emp_no
WHERE e.birth_date >= '1952-01-01' AND e.birth_date <= '1955-12-31'
ORDER BY emp_no

-- Use Distinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (emp_no) emp_no,
first_name,
last_name,
title
INTO unique_titles
FROM retirement_titles
WHERE to_date = '9999-01-01'
ORDER BY emp_no, to_date DESC;

SELECT COUNT(title) FROM unique_titles; --72,458

-- return total count of retiring in each title
SELECT COUNT(title), title
INTO retiring_titles
FROM unique_titles
GROUP BY title
ORDER BY COUNT(title) DESC;

----
--
--mentorship-eligibility table that holds the current employees who 
-- were born between January 1, 1965 and December 31, 1965
SELECT DISTINCT ON(e.emp_no) e.emp_no, e.first_name, 
		e.last_name, e.birth_date,
		d.from_date, d.to_date, t.title
FROM employees AS e
JOIN dept_emp AS d
ON e.emp_no = d.emp_no
JOIN titles AS t
ON e.emp_no = t.emp_no
WHERE (d.to_date = '9999-01-01') AND
	(e.birth_date >= '1965-01-01' AND e.birth_date <= '1965-12-31')
ORDER BY e.emp_no;

SELECT * FROM dept_emp;