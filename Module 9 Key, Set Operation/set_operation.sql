use dummydb;

SELECT * 
FROM employees;
-- Union operation
SELECT *
FROM employees
WHERE salary > 10000
UNION ALL
SELECT * 
FROM employees
WHERE department_id =100;

-- union all

SELECT *
FROM employees
WHERE salary > 10000)
INTERSECT
(SELECT * 
FROM employees
WHERE department_id =100);


-- Intersection
(SELECT *
FROM employees
WHERE salary > 10000)
INTERSECT
(SELECT * 
FROM employees
WHERE department_id =100);

-- Minus

