use practice;
create table Employee(
	EmpId int primary key,
    EmpName varchar(50),
    Joing_year int,
    Birthday date check (Birthday<='2000-12-31'),
    Designation char(40),
    Salary int
    );
insert into Employee(EmpId, EmpName, Joing_year, Birthday, Designation, Salary) values(1,'khalid', 2025,'2000-12-31','Web',30000);

insert into Employee(EmpId, EmpName, Joing_year, Birthday, Designation, Salary) values(2,'khid', 2025,'2001-12-31','Web',30000);

insert into Employee(EmpId, EmpName, Joing_year, Birthday, Designation, Salary) values(1,'khalid', 2025,'2000-12-31','Web',30000);





select* from employee;