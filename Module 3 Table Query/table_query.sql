create database Module3;

use module3;
-- type_1
create table Student
(
	Roll char(4),
    Name varchar(50),
    Email varchar(60),
    Address varchar(255),
    Age int 
    
);

-- type 2
-- this  used 
create table Student
(
	Roll char(4) primary key,
    Name varchar(50) not null,
    Email varchar(60) unique,
    Address varchar(255),
    Age int 
);

insert into Student(Roll, Name, Email, Address, Age) values('001','Mehadi','mehadi@gmail.com', 'Dhaka', 21);

insert into Student(Roll, Name, Email, Address, Age) values('002','Mehadi','mdd@gmail.com', 'Dhaka', 21);

insert into Student(Roll, Name, Email, Address, Age) values('003','','rakib@gmail.com', 'Dhaka', 21);

-- type 3  
create table Student
(
	Roll char(4),
    Name varchar(50) not null,
    Email varchar(60),
    Address varchar(255),
    Age int ,
    primary key(Roll),
    unique(Email),
    check(age>10)
    
    
);
-- type 4-

create table Student
(
	Roll char(4),
    Name varchar(50) not null,
    Email varchar(60),
    Address varchar(255),
    Age int ,
    constraint pk_rule primary key(Roll),
    constraint unique_rule unique(Email),
    constraint checking_rule check(age>10)
);

create table Library
(
	BookName varchar(50) primary key,
    WhoHired_Roll char(4) references Student(Roll)
);

create table course(
	courseName varchar(10) ,
    University varchar(50) ,
    cradit int,
    primary key (courseName, University)
    );
    
select 10%4;
select * from student;
select name from student;
select * from student where roll ='001';
select email from student where roll='001';

create table Marks(
Roll char(4) primary key,
CSE int,
MEC int);
insert into Marks(Roll, CSE, MEC) values ('102', 99,70);
insert into Marks(Roll, CSE, MEC) values ('103', 95,75);
insert into Marks(Roll, CSE, MEC) values ('104', 90,80);
insert into Marks(Roll, CSE, MEC) values ('105', 50,50);
drop table marks;
select roll from Marks;
select CSE+MEC from marks;
select CSE+MEC from marks where roll='105';
select (CSE+MEC), (CSE-MEC), (CSE*MEC), (CSE/MEC), (CSE%MEC), (CSE+MEC)/2 from marks;

create table std_age(
	Roll char(4) primary key,
    age int
    );
insert into std_age (Roll, age) values ('101', 19);
insert into std_age (Roll, age) values ('102', 20);
insert into std_age (Roll, age) values ('103', 21);
insert into std_age (Roll, age) values ('104', 18);
insert into std_age (Roll, age) values ('105', 23);
select  * from std_age;
select* from std_age where age>=20;

create table Employee(
	Id int primary key,
    Name varchar(20),
    Salary int,
    Joining_date int,
    age int
    );
insert into Employee(Id, Name,Salary, Joining_date, age) values (1,'Mehadi', 50000,2025,21);
insert into Employee(Id, Name,Salary, Joining_date, age) values (2,'Rakib', 40000,2023,20);
insert into Employee(Id, Name,Salary, Joining_date, age) values (3,'Khalid', 30000,2024,25);
insert into Employee(Id, Name,Salary, Joining_date, age) values (4,'Ratul', 20000,2025,18);
insert into Employee(Id, Name,Salary, Joining_date, age) values (5,'Sifat', 25000,2021,19);

select * from employee order by age desc;
select * from employee order by age desc;
select  distinct age from employee;
select* from employee where age in(20,21,19);
select* from employee where age not in(20,21,19);
select* from employee name like '%at%'; 
select name as employee_Name from Employee;

select * from employee;
select * from employee where salary>=40000 and age>=20;

    
