-- 1. Create tables - 15 Marks 
CREATE DATABASE Assignment1;
USE Assignment1;
CREATE TABLE Student(
	Student_ID CHAR(4) PRIMARY KEY,
    Name VARCHAR(50) NOT NULL,
    Email VARCHAR(80) UNIQUE,
    Department VARCHAR(20),
    Age INT CHECK (Age>=15 AND Age <=30)
    );
    
CREATE TABLE Libary(
	Book_name VARCHAR(150) PRIMARY KEY,
    Who_haired CHAR(4),
    FOREIGN KEY (Who_haired) REFERENCES Student(Student_ID)
    );
    
CREATE TABLE Fees(
	Student_Id CHAR(4) PRIMARY KEY,
    Total_Fees INT CHECK (Total_Fees >= 0),
    Fees_Payed INT CHECK (Fees_Payed >= 0),
    FOREIGN KEY (Student_Id) REFERENCES Student(Student_ID)
    );
SELECT * from Student;

-- Employee Table --
CREATE TABLE Employee(
	EmployeeID int PRIMARY KEY,
    FirstName VARCHAR(20) NOT NULL,
    LastName VARCHAR(20),
    Age int,
    Department VARCHAR(50)
    );

INSERT INTO Employee(EmployeeID,FirstName,LastName,Age,Department) VALUES(1,'John','Doe',28,'Sales');
INSERT INTO Employee(EmployeeID,FirstName,LastName,Age,Department) VALUES(2,'Jane','Smith',32,'Marketing');
INSERT INTO Employee(EmployeeID,FirstName,LastName,Age,Department) VALUES(3,'Michael','Johnson',35,'Finance');
INSERT INTO Employee(EmployeeID,FirstName,LastName,Age,Department) VALUES(4,'Sarah','Brown',30,'HR');
INSERT INTO Employee(EmployeeID,FirstName,LastName,Age,Department) VALUES(5,'William','Davis',25,'Engineering');  
INSERT INTO Employee(EmployeeID,FirstName,LastName,Age,Department) VALUES(6,'Emily','Wilson',28,'Sales');  
INSERT INTO Employee(EmployeeID,FirstName,LastName,Age,Department) VALUES(7,'Robert','Lee',33,'Marketing');  
INSERT INTO Employee(EmployeeID,FirstName,LastName,Age,Department) VALUES(8,'Laura','Hall',29,'Finance');  
INSERT INTO Employee(EmployeeID,FirstName,LastName,Age,Department) VALUES(9,'Thomas','White',31,'HR');
INSERT INTO Employee(EmployeeID,FirstName,LastName,Age,Department) VALUES(10,'Olivia','Clark',27,'Engineering');
    
    
SELECT * FROM Employee;
-- 5. Write a query to show the distinct department names - 10 Marks:
SELECT DISTINCT Department FROM Employee;

-- 6. Write a query to show the LastNames of the employees sorted by  descending ages - 10 Marks:
SELECT LastName FROM Employee ORDER BY age DESC;

-- 7.Write a query to show the employee LastName whose age is greater than 30 and works in Marketing department. - 10 Marks:
SELECT LastName from Employee WHERE age>30 AND Department='Marketing';

-- 8. Write a query to select all the employees - 10 Marks:
SELECT * FROM Employee;

-- 9. Write a query to get employees whose names includes ‘son’ - 10 Marks:
SELECT * FROM Employee WHERE FirstName LIKE '%son%' OR LastName LIKE '%son%';

-- 10.Write a query to get the engineers - 10 Marks:
SELECT * FROM Employee WHERE Department = 'Engineering';



    
	