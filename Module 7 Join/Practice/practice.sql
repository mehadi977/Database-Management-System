use dummydb;

-- 1. Show the employee names and corresponding job_titles without using JOIN query

	SELECT first_name, 
	(SELECT job_title from jobs where jobs.job_id = employees.job_id) as job_tile
FROM employees;

-- 2. Do the question no 1 using JOIN query:
select first_name, job_title
FROM employees
	LEFT JOIN jobs 
		on employees.job_id = jobs.job_id;
        
        
-- 3. Show the name of the employee and the job_title who receives the maximum salary:

SELECT first_name,job_title, salary
FROM employees
	JOIN jobs
		ON employees.job_id = jobs.job_id
WHERE salary = (SELECT max(salary) from employees);

-- 4. Show the list of employee name and corresponding manager names:
SELECT m.first_name as manager , e.first_name as employee
FROM employees as m
	left JOIN employees as e
		ON e.manager_id = m.employee_id 