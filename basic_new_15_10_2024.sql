create database Student; 
use Student;
select now();
select 2+4; 
select curdate(); 
create table student1(
id int not null auto_increment primary key, 
name varchar(30) not null,
dob date,
class varchar(40)
); 

insert into student1(name, dob, class)
values ('Karan kumar', '2002-04-20', 'BCA') ; 


select * from student1; 


