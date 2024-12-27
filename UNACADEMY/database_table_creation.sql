create database if not exists UNACADEMY; 
show databases; 
use unacademy; 

create table student(rno int primary key,
name varchar(250),
fname varchar(250)
); 

insert into student 
values(1,'sumit','Suresh'),
(2,'Amit','Naresh'),
(3,'Priya','Mahesh'),
(4,'Neha','Dinesh')
; 

create table Library
(rno int primary key,
bookid varchar(250),
bookname varchar(250)
); 

insert into Library
values
(1,'B1','Hamacher'),
(3,'B2','Galvin'),
(5,'B3','CLRS')
; 

create table student2
(rno int primary key,
name varchar(250),
fname varchar(250),
dob date
); 

show tables;
select * from library; 
select * from student; 
select * from student2; 

insert into student2(rno, name, fname, dob) 
values (101, 'Raj', 'Mahesh', '2003-11-20'), 
(102, 'Mahendra kapur', 'Ramesh kapur', '2000-12-12'); 

select * from student2; 





