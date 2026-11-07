use program;
create table Student(
	Roll char(4) primary key,
    Name varchar(50),
    Marks double
    );
    
INSERT INTO student(Roll, Name, Marks) VALUES(1, 'Mehadi', 84);

insert into student
(Roll,name) value(2,'Khalid');

SET SQL_SAFE_UPDATES=0;
update student
set Name = 'Mehadi Hasan'
where Roll=1;
set sql_safe_updates=1;

DELETE FROM student
WHERE Roll =2;






