-- Group by

SELECT * 
from employees;

SELECT department_id , max(salary)
FROM employees
GROUP BY department_id;

SELECT * 
FROM employees
WHERE department_id = 20;

SELECT  department_id, count(*)
FROM employees
GROUP BY department_id;

-- Havig Query

SELECT department_id,max(salary)
FROM employees
WHERE department_id != 20
GROUP BY department_id
HAVING max(salary)>5000;


SELECT department_id,max(salary)
FROM employees
WHERE department_id != 20
GROUP BY department_id
HAVING avg(salary)>5000;

SELECT department_id,max(salary) as mxSal
FROM employees
WHERE department_id != 20
GROUP BY department_id
HAVING mxSal>5000;





