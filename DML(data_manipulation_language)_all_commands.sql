show tables; 
select * from customer; 
select * from order_details; 
drop table order_details; 

-- on delete cascade 
create table order_details
(
order_id int primary key,
delivery_date date,
cust_id int,
foreign key(cust_id) references customer(id) on delete cascade
); 


select * from customer; 
select * from order_details; 



-- on delete set null 
create table order_details
(
order_id int primary key,
delivery_date date,
cust_id int,
foreign key(cust_id) references customer(id) on delete set null
); 

select * from customer; 
insert into customer
values
(
1, 'himanshu','uttar pradesh',232103)
,
(6,'sundaram','uttar pradehs',232103); 
insert into order_details
values
(
1234, '2024-03-16',1); 
select * from order_details; 

delete from customer where id = 1; 

drop table order_details; 

-- REPLACE 
show databases; 
use temp;
show tables; 
select * from customer; 
-- already exist data 
-- syntax - 1
replace into customer(id,name,address,pincode) 
values(2,'radhe','Madhya pradesh',220115); 

-- already not exist data 
replace into customer(id,name,address,pincode) 
values(102,'Saumya','Bhatraul',232104); 

-- different syntax for the replace 
-- syntax - 2 
replace into customer set id=101,
name='Radhika',address='Vrindavan',pincode=861857; 

-- syntax - 3
replace into customer(name,address,pincode)
	select name,address,pincode 
    from customer where id=103; 
 
 



























