
-- Alter Table
CREATE database consp2;
use consp2;
CREATE table person(
	id int PRIMARY KEY,
    name VARCHAR(50),
    email VARCHAR(50)
    );
ALTER TABLE person ADD COLUMN address VARCHAR(100);
ALTER TABLE person DROP COLUMN name;
ALTER TABLE person CHANGE COLUMN email email VARCHAR(100) NOT NULL;
 
-- subquery
 
use dummydb;
SELECT * from employees;
SELECT avg(salary) from employees;

SELECT employee_id, first_name,last_name,salary
from employees
WHERE salary > 15000;

SELECT employee_id, first_name,last_name,salary
from employees
WHERE salary > (select avg(salary) from employees);

-- Group By
-- count the number of employees in each job title-
SELECT job_id, count(*) as employee_count
FROM employees
GROUP BY job_id;

SELECT job_id, count(*) as employee_count
FROM employees
GROUP BY job_id;

-- having

-- group er upor condition dite 'having'
SELECT job_id,count(*) as employee_count
FROM employees
GROUP BY job_id
HAVING employee_count >= 2
ORDER BY  employee_count DESC;

-- Subquery with group by:
-- fing departments where the avarage salary is higer than the overall avarage slary:
SELECT avg(salary) from employees;

SELECT 
    department_id, AVG(salary) AS avg_sal
FROM
    employees
GROUP BY department_id
HAVING avg_sal > (SELECT 
        AVG(salary)
    FROM
        employees);



SELECT department_id,(SELECT department_name from departments WHERE employees.departments_id= departments.department_id ) as department,avg(employees.salary) as avg_sal
from employees
GROUP BY employees.department_id
HAVING avg_sal> (SELECT avg(salary) from employees);

