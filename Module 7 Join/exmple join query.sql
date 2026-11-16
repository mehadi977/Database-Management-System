use dummydb;

-- employee name r sathe tar manager 
SELECT m.first_name as employee, e.first_name as manager
FROM employees AS e
	JOIN employees as m
    ON e.employee_id = m.manager_id;


-- 2. emon dept er namgulo show koro jeshob dept e kono employee nei:

SELECT departments.department_name
FROM departments
	LEFT JOIN employees
		ON departments.department_id = employees.employee_id
WHERE employees.department_id is NULL;

-- 3. emp er fast_name , salary, tar dept er avg salary er ceye se koto kom pai

SELECT
	employees.first_name,
    employees.salary,
    (SELECT avg(salary) FROM employees WHERE department_id= employees.department_id) -employees.salary
FROM employees
	JOIN departments
		ON departments.department_id = employees.department_id;

-- 4. seishob dept er name show koro jader min salary 5000 er beshi

SELECT department_name ,min(salary),avg(salary)
FROM employees
	JOIN departments
		ON employees.department_id = departments.department_id
GROUP BY department_name
HAVING min(salary)>8000;





        