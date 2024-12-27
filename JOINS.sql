CREATE DATABASE IF NOT exists JOINS; 
show databases; 
use JOINS; 

create table employee 
(
id int primary key ,
fname varchar(250),
lname varchar(250),
age int(3),
emailiD varchar(250),
phoneNO integer,
city varchar(250)
); 
show tables; 
desc employee; 

insert into employee (id,fname, lname,age,emailiD,phoneNO, city) 
values (2,'Aman','singh',23,'amansingh345@gmail.com',98434,'Delhi'),
(3,'Himanshu','kumar',20,'hksinha75655@gmail.com',799186,'Uttar Pradesh'),
(4,'Mahesh','bhatt',34,'mahesh6454@gmail.com',768593,'Rajasthan'),
(5,'Raman','susodia',54,'ramansusodia@3434.gmail.com',4345356,'Delhi'); 

select * from employee; 

create table client
(
id int primary key,
first_name varchar(250),
last_name varchar(250),
age int,
emailID varchar(250),
phoneNO int,
city varchar(250),
empId int,
foreign key(empId)
 references employee(id)
 on delete cascade
 ); 
 
 show tables; 
desc client; 

insert into client
(id,first_name,last_name,age,emailID,phoneNO,city,empId)
values
(1, 'Mac','Rogers',47,'mac@hotmail.com',333,'Kolkata',3),
(2,'Max','Poirier',27,'max@gmail.com',222,'Kolkata',3),
(3,'Peter','Jain',24,'Peret@abc.com',111,'Delhi',1),
(4,'Sushant','Aggrawal',23,'sushant@yahoomail.com',45454,'Hyderbad',5),
(5,'Pratap','Singh',34,'p@xyz.com',77767,'Mumbai',2)
; 

select * from client; 

create table Projects
(
id int primary key,
empId int,
foreign key(empId)
 references employee(id)
 on delete cascade, 

name varchar(250),

startData date,
clientId int,
foreign key(clientId)
 references client(id)
 on delete cascade
 
); 

show tables;
desc projects; 

insert into projects (id,empId,name,startData,clientId)
values
(1,1,'A','2021-04-21',3),
(2,2,'B','2021-03-12',1),
(3,3,'C','2021-01-16',5),
(4,3,'D','2021-04-27',2),
(5,5,'E','2021-05-01',4)
; 

 select * from projects; 
 
 
 -- JOINS -- 
 
 -- 1. INNER JOIN : --------------
 -- Enlist all the employees ID's,names along with the Project allocated to them. 
 
 select e.id,e.fname,e.lname,p.id,p.name from employee as e INNER JOIN Projects as p ON e.id = p.empId;
 
-- INNER JOIN WITHOUT USING INNER JOIN KEYWORD : ----
select e.id,e.fname,e.lname,p.id,p.name from employee as e, Projects as p where e.id = p.empId;

-- Fetch all the details from the employee id's and their contact details who have been working from 'jaipur' with the client name working in 
 -- Hyderabad . 
 
 select e.id, e.emailId, e.phoneNO,c.first_name, c.last_name from employee as e INNER JOIN client as c 
 ON e.id = c.empid where e.city = 'delhi' and c.city = 'Mumbai'; 
 
 
 -- 2. LEFT JOIN : ---------
 -- Fetch out each project allocated to each employee
 select * from employee as e LEFT JOIN projects as p ON e.id = p.empid; 
 
 -- 3. RIGHT JOIN : --------
 -- List out all the projects along with employee's name and their respective allocated emaid id. 
 
 select p.id, p.name, e.fname, e.lname,e.emailid from employee as e right join projects as p ON e.id = p.empid; 
 
 
-- 3. FULL JOIN : ---------

select * from employee as e LEFT JOIN projects as p ON e.id = p.empid
union
select * from employee as e
right join projects as p ON e.id = p.empid; 
 

-- 4. CROSS JOIN : ------
select p.id, p.name, e.fname, e.lname,e.emailId from employee as e
cross join projects as p; 

-- 5. SELF JOIN : ---------

create table student(rno int primary key,
 name varchar(250),
 branchid int) ; 
 insert into student values(2,'Amit',2), 
 (3,'Priya',5), 
 (4,'Neha', 4) ; 

select * from student; 

select * from student as s1, student as s2 where s1.rno = s2.branchid;

show tables; 

-- cartisian product 
select * from customer, student; 
 
 
 
 
 
 
 
 
 
 
 