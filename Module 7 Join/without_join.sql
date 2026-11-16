use dummydb;

SELECT *FROM employees;
 -- combine tow table without join syntax:
 
SELECT employees.first_name, departments.department_name
FROM employees, departments
where employees.department_id = departments.department_id;

-- using join syntax:----

SELECT employees.first_name, departments.department_id
FROM employees 
JOIN departments ON employees.department_id =departments.department_id;

-- duita table er row name jodi eki thake tahole USING use kora jai-
SELECT employees.first_name, departments.department_name
from employees
JOIN departments USING (department_id);




