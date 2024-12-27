-- where caluse 
select * from orderdetails where quantity>10 ; 
select * from orderdetails where quantity <= 10; 
select * from orderdetails where quantity <> 10; 

-- Logical Operators 
-- and query 

-- all such orders when quantity is alteast 10 and orderid is greater 
-- than 10250

select * from orderdetails where quantity >= 10 
and orderid > 10250; 

-- Or query 
select * from orderdetails where quantity >= 10 
or orderId>10250; 

-- Not query 
select * from Orderdetails where NOT quantity > 10; 

-- BETWEEN OPERATOR 
show tables;
desc amount;
select * from amount; 
select balance from amount where balance between 100 and 500; 

-- Return all such orders details when quantity between 10 and 20
use unacademy;
select * from orderdetails where quantity between 10 and 20;

-- Return all such orders details when quantity is lesser than 10 or greathen 20. 
select * from orderdetails where quantity Not between 10 and 20; 
-- 							or
select * from orderdetails where quantity<10 or quantity>20; 

-- LIMIT
-- Fetch only 4 records from products table.
select * from products limit 4; 

-- Fetch only top 4 records from products table which has price greater than 20.
select * from products where price>20 limit 4;

-- Fetch only 4 records after leaving 5 records.
select * from products limit 5,4; 

-- NULL VALUES 
-- Fetch those students whose mobile no. is not NULL
alter table student 
add column mobile char(10); 
desc student; 

select * from student;

update  student set
mobile="8976456868" where rno=3; 

select * from student where mobile IS NOT NULL; 

-- AGGREGATE FUNCTIONS 
-- Minimum price from a product table in price column
select min(price) from products;
-- Maximum price from a product table.
select max(price) from products;
-- Return sum of all in a column.
select sum(price) from products where price>30;
-- Return number of records/rows.
select count(price) from products where price > 30;
-- Return average value
select avg(price) from products where price <30;

-- In operator
-- Find all such customers which are from either Germany, UK and France. 
select * from customers where country="Germany" or country="UK" or country="France";
--                    or 
select * from customers where country in ('Germany', 'UK', 'France'); 


