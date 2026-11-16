use dummydb;

SELECT *
FROM EMPLOYEES;

SELECT *
FROM EMPLOYEES 
WHERE EMPLOYEE_ID= 144;

SELECT * 
FROM EMPLOYEES
WHERE SALARY<2500;


SELECT * 
FROM EMPLOYEES
WHERE SALARY<2500;
-- employee id 144 er cheye kom salary kara kara pai
SELECT * 
FROM employees
WHERE salary < (SELECT salary 
				FROM employees
                WHERE employee_id=144
                );
                
-- hight salary k pai:

SELECT max(salary)
from employees;

SELECT * 
FROM employees 
WHERE salary = (SELECT max(salary)
				FROM employees
                );
                

--  marketing dept e jara jara kaj kore:
SELECT *
FROM departments;

SELECT *
FROM employees
WHERE department_id= (SELECT department_id
						FROM departments
                        WHERE department_name='Marketing'
                        );
                
-- tader avrage salary
SELECT avg(salary)
FROM employees
WHERE department_id= (
						SELECT department_id
                        FROM departments 
                        WHERE department_name='Marketing'
                        );


-- it department e koto jon ache
SELECT *
FROM employees
WHERE department_id=(
					  SELECT department_id
                      FROM departments 
                      WHERE department_name='IT'
                      );
                      
SELECT count(*)
FROM employees
WHERE department_id=(
					  SELECT department_id
                      FROM departments 
                      WHERE department_name='IT'
                      );
                      
                      
                      
-- programer er pechone monthly koto koroch hoy 
  -- programer er job_d paoar jonno
SELECT job_id
FROM jobs 
WHERE job_title='programmer';     
 -- sekhan theke all programer data
SELECT *
FROM employees
WHERE job_id= (SELECT job_id
				FROM jobs
                WHERE job_title = 'programmer'
                );
-- mot khoros
SELECT sum(salary)
FROM employees
WHERE job_id= (SELECT job_id
				FROM jobs
                WHERE job_title = 'programmer'
                );
                
-- secound hight salary
SELECT * 
FROM employees
WHERE salary = (
				 SELECT DISTINCT salary
                 FROM employees
                 ORDER BY salary DESC
                 limit 1 OFFSET 1
                 );
                 
-- mx salary
SELECT max(salary)
FROM employees;

SELECT max(salary)
FROM employees
WHERE salary< (
				SELECT max(salary)
                FROM employees
                );
-- tar data print
SELECT *
FROM employees
WHERE salary = (
				 SELECT max(salary)
                 FROM employees
                 WHERE salary< (
								 SELECT max(salary)
                                 FROM employees
                                 )
				);
                 
                 
-- konkon employee tader manager er cheye beshi beton pai
SELECT *
FROM employees AS EMP
WHERE salary > (
				 SELECT salary 
                 FROM employees as MGR
                 WHERE EMP.manager_id= MGR.employee_id
                 );
                 
                 
-- kon kon employee tader manager er moto same job kore

SELECT *
FROM employees as emp
where job_id = (
				 SELECT job_id
				 FROM employees as mgr
                 WHERE emp.manager_id= mgr.employee_id
                 );
                 
