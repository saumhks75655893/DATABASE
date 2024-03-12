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