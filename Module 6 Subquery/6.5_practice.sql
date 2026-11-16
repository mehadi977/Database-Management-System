use dummydb;

SELECT * 
FROM employees
ORDER BY salary DESC;

SELECT * 
FROM employees
WHERE salary = (
				 SELECT max(salary)
                 FROM employees 
                 );
                 
                 
                 
-- 1. Determine the third highest salary and which employee receives it?

SELECT *
FROM employees                 
WHERE salary = (
				 SELECT max(salary)
                 FROM employees
                 WHERE  salary < (
									SELECT max(salary)
                                    FROM employees
                                    WHERE salary< (
													SELECT max(salary)
                                                    FROM employees)
									)                                    			
				);
				
                
-- 2. Determine the third lowest salary and which employee receives it?

SELECT * 
FROM employees
ORDER BY salary ASC;
-- eta holo shobceye kom j salary pai
SELECT * 
FROM employees
WHERE salary = (
				 SELECT min(salary)
                 FROM employees);
                 
-- 2 number:
SELECT * 
FROM employees
WHERE salary = (
				 SELECT min(salary)
                 FROM employees
				 WHERE salary> (
								 SELECT min(salary)
                                 FROM employees
                                 )
				);
-- 3rd:
SELECT * 
FROM employees
WHERE salary = ( 
				 SELECT min(salary)
                 FROM employees
                 WHERE salary > ( 
								  SELECT min(salary)
                                  FROM employees
                                  where salary > (
													SELECT min(salary)
                                                    FROM employees)
								)
				);
                
                
                
-- 3. Which employee has been hired after Steven?

SELECT * 
FROM employees
WHERE first_name='steven';

SELECT hire_date
FROM employees
WHERE first_name='steven';

SELECT *
FROM employees
where hire_date= (  
				   SELECT hire_date
				   FROM employees
				   WHERE first_name='steven' AND last_name='king')
                   ;
                   

SELECT *
FROM employees
where hire_date> (  
				   SELECT hire_date
				   FROM employees
				   WHERE first_name='steven' AND last_name='king')
                   ;
                   
                   
-- 4. With common table expression solve the question 1 and 2

WITH mx_salary as
	(
    SELECT max(salary) as mx_sal
    FROM employees
    ),
secnd_mx AS 
	(
    SELECT max(salary) as secnd_sal
    FROM employees
    WHERE salary< ( SELECT mx_sal FROM mx_salary)
    ),
trd_mx AS 
	(
    SELECT max(salary) as trd_sl
    FROM employees
    WHERE salary< (SELECT secnd_sal FROM secnd_mx)
    )
SELECT *FROM employees
WHERE salary = (SELECT trd_sl FROM trd_mx);

-- 2:
SELECT * 
FROM employees
ORDER BY salary asc;
					
			
WITH mn_salary as
	(
    SELECT MIN(salary) as mn_sal
    FROM employees
    ),
snd_min as
	(
    SELECT min(salary) as snd_sal
    FROM employees
    WHERE salary > (SELECT mn_sal FROM mn_salary)
    ),
trd_min as
	(
    SELECT min(salary) as trd_sal
    FROM employees
    WHERE salary >(SELECT snd_sal FROM snd_min)
    )
SELECT * 
FROM employees
WHERE salary = ( SELECT trd_sal FROM trd_min);


