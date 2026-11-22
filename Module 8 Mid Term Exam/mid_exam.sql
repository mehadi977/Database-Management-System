use dummydb;

-- 2:

SELECT DISTINCT
  e1.first_name, e1.manager_id
FROM employees e1
	JOIN employees e2
		ON e1.manager_id =e2.manager_id AND e1.employee_id != e2.employee_id;
        
        
-- 3: Create a table of Employees which has the following fields

CREATE TABLE Employees(
	Employee_Id int PRIMARY KEY,
	First_Name VARCHAR(30),
	Last_Name VARCHAR(30),
	Date_of_Birth DATE,
	Department_Id int,
	Salary INT
    );
    
CREATE TABLE Projects(
	Project_ID int PRIMARY KEY,
	Project_Name VARCHAR(100),
	Start_Date date,
	End_Date date,
	Budget INT
    );
    
CREATE TABLE Employee_Projects(
	Employee_ID int ,	
	Project_ID INT,
    PRIMARY KEY (Employee_ID, Project_ID),
    FOREIGN KEY (Employee_ID)
		REFERENCES Employees(Employee_ID),
	
    FOREIGN KEY (Project_ID)
		REFERENCES Projects(Project_ID)
    );

-- 4.

SELECT DISTINCT salary
FROM employees
ORDER BY salary DESC 
LIMIT 1 OFFSET 2;

SELECT * 
FROM employees
WHERE salary = (SELECT DISTINCT salary
				FROM employees
				ORDER BY salary DESC 
				LIMIT 1 OFFSET 2 );

-- 5.
SELECT d.department_name, 
	count(e.employee_id) as total_employees
FROM departments d
LEFT JOIN employees e
	on d.department_id = e.department_id
GROUP BY d.department_id;

-- 6.
-- inner join
SELECT e.first_name,d.department_name
FROM employees e
	INNER JOIN departments d
		on e.department_id = d.department_id;

-- Left join:
SELECT e.first_name,d.department_name
FROM employees e
	LEFT JOIN departments d
		ON e.department_id = d.department_id;
        
-- Right join:
SELECT e.first_name, d.department_name
FROM employees e
	RIGHT JOIN departments d
		ON e.department_id = d.department_id;
-- cross join :
SELECT e.first_name, d.department_name
from employees e
	CROSS JOIN departments d;
    
-- 7:
WITH avg_salary AS (
	SELECT avg(salary) AS average
    FROM employees
    )
SELECT first_name
FROM employees
WHERE salary>(SELECT average FROM avg_salary);


WITH avg_salary AS (
    SELECT AVG(salary) AS average
    FROM employees
)
SELECT first_name
FROM employees
WHERE salary > (SELECT average FROM avg_salary);





-- 8. 
SELECT first_name, last_name
FROM employees
WHERE salary<(
	SELECT salary 
    FROM employees
    where first_name='Steven' AND last_name= 'King'
    );

-- 9.
SELECT d.department_name, e.first_name, e.last_name
FROM departments d
	LEFT JOIN employees e
		ON d.manager_id = e.employee_id;

-- 10:
SELECT d.department_name, l.city 
FROM departments d
	JOIN locations l
    ON d.location_id = l.location_id;
-- ------------------------
SELECT DISTINCT l.city
FROM departments d
JOIN locations l
    ON d.location_id = l.location_id;
	