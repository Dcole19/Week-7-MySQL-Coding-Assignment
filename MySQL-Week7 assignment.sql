SELECT * FROM employees WHERE birth_date < '1965-01-01';
SELECT * FROM employees WHERE gender = 'F' AND hire_date > '1990-12-31';
SELECT first_name, last_name FROM employees WHERE last_name LIKE 'F%' LIMIT 50;
INSERT INTO employees VALUES
(100, '1981-09-16', 'Inidana', 'Jones', 'M', '2022-04-05'), 
(101, '1986-01-29', 'Marge', 'Simpson', 'F', '2001-05-15'),
(102, '2008-12-08', 'Margaret', 'Adams', 'F', '1998-05-27');
UPDATE employees SET first_name = 'Bob' WHERE emp_no = 10023;
UPDATE employees SET hire_date = '2002-01-01' WHERE first_name LIKE 'P%' OR last_name LIKE 'P%';
DELETE FROM employees WHERE emp_no < 10000;
DELETE FROM employees WHERE emp_no = 10048 AND 10099 AND 10234 AND 20089;
SELECT * FROM employees where emp_no = 10048 AND 10099 AND 10234 AND 20089;