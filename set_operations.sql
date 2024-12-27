create database if not exists ABC; 
use ABC; 
create table dept1
(
empid int primary key,
name varchar(250),
role varchar(250)
); 

create table dept2
(
empid int primary key,
name varchar(250),
role varchar(250)
); 
insert into dept1
(empid, name, role)
values
(1,'A','Engineer'),
(2,'B','Salesman'),
(3,'C','Manager'),
(4,'D','Salesman'),
(5,'E','Engineer')
;

insert into dept2
(empid, name, role)
values
(3,'C','Manager'),
(6,'F','Marketing'),
(7,'G','Salesman')
; 

select * from dept1; 
select * from dept2; 


-- 1. 	List out all the employees in the company.
select * from dept1
union
select * from dept2; 

-- 2. List out all the employees who works in the salesman department. 

select * from dept1 where role = 'Salesman'
union
select * from dept2 where role = 'Salesman'; 

-- 3. List out all the employees who works in both department.
-- intersect
select dept1.* from dept1 inner join dept2 using(empid); 

-- 4. List out all the employees working in dept1 but not in dept2. 
-- minus
select dept1.* from dept1 
left join  dept2 using(empid) where dept2.empid is NULL; 
















