create database practice_module_2;
use practice_module_2;

create table Employee(
EmployeeId char(4) primary key,
EmployeeName varchar(50),
EmployeeSalary int,
JoiningDate date
);

drop table Employee;

insert into Employee 
	(EmployeeId, EmployeeName, EmployeeSalary, JoiningDate) values (101, 'Rakib', 30000, '2026-11-06');

insert into Employee
	(EmployeeId, EmployeeName,EmployeeSalary,JoiningDate) values (102,'Sakib',25000,'2025-11-07');
    
set sql_safe_updates=1;
set sql_safe_updates=0;
delete from Employee where EmployeeId=102;
