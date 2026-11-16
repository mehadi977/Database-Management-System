use dummydb;

-- CTE- Common table expression
WITH temp as
	( SELECT * 
    FROM employees
    LIMIT 5
    )
SELECT *
FROM temp;

-- exmple
-- it dept er avg salary 
WITH avg_id as 
	(
	SELECT avg(salary) as sal1
	FROM employees
	WHERE department_id=60  -- It 
	),
max_mkt as   -- marketing dept er max salary
	(
	SELECT max(salary) as sal2
	FROM employees
	WHERE department_id=20  -- marketing
	)
SELECT *
FROM employees
WHERE salary >(SELECT sal1 FROM avg_id) AND (SELECT sal2 FROM max_mkt);