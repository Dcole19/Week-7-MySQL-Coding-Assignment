-- I want to know how many employees with each title were born after 1965-01-01.


SELECT t.title, COUNT(*) AS "Number of Employees"
FROM titles AS t
JOIN employees AS e ON e.emp_no = t.emp_no
WHERE e.birth_date > '1965-01-01'
GROUP BY t.title


-- I want to know the average salary per title.

SELECT  avg(salary) AS AVG_Salary, titles.title 
from titles
join salaries
on titles.emp_no = salaries.emp_no
group by title;


-- How much money was spent on salary for the 
-- marketing department between the years 1990 and 1992?

select 
	SUM(salary) AS 'SUM_Salary_1990-1992', 
	departments.dept_name
from departments, salaries 
	WHERE dept_name = 'Marketing'  
	and from_date >='1990-01-01' 
    and from_date < '1992-01-01';