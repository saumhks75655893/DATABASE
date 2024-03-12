create database if not exists temp; 
use temp;

create table student1(
enroll int primary key, 
name varchar(20), 
fname varchar(20)
); 

create table mess4
(
messid int primary key,
studentname varchar(20),
studentfee int,
foreign key(messid) references student1(enroll)
); 


create table account(
id int primary key,
name varchar(255) unique,
balance int NOT NULL default 0
);  

select * from account; 

-- add new column
ALTER table account ADD interest float NOT NULL default 0; 

-- modify 
ALTER table account MODIFY interest DOUBLE NOT NULL default 0; 

DESC account; 

-- change column 
ALTER table account change column interest saving_interest float not null default 0; 

desc account; 

-- drop column
ALTER table account drop column saving_interest; 
desc account; 

-- RENAME THE TABLE 
ALTER table account rename to account_details; 

desc account_details;  




