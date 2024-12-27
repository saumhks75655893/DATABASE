-- LIMITS : ---------
show databases; 
use temp; 

create table product 
(pid int primary key,
 pname varchar(250),
 pprice int); 
 insert into product values(101,'Bottol',500),
 (102,'Books',1000),
 (103,'ExamBoards',2500),
 (104,'Sliper',1500),
 (105,'Charger',1000),
 (106,'Keyboard',2000),
 (107,'Mouse',1800),
 (108,'table',5000),
 (109,'Chair',4000),
 (110,'Cap',1500);
 
 select * from product; 
 
 -- 1. Extract only 4 products from the product table from upper side. 
 select * from product limit 4; 
 
 -- 2. Extract only 4 products after leaving 5 product from the upper side.
 
select * from product limit 2,5; 

 