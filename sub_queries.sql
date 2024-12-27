show databases; 
use joins;
show tables; 

-- SUB - QUERIES : --------------
-- where clause with same table
-- Employees with age > 30 

select * from employee where age in (select age from employee where age>30); 

-- where clause with different table
-- emp details working with more than one projects; 

 select * from employee where id in
 (select empid from projects group by empid having count(empid) > 1); 
 
 -- single value subquery
 -- emp details having age>avg(age)
 
 select * from employee where age>(select avg(age) from employee); 
 
 -- From clause : derived table (alias) 
 -- select max age person whose first name has 'a'
 desc employee;
 select max(age) from (select * from employee where fname like '%a%') as temp; 
 
 -- corelated subquery
 -- find third oldest employee
 
 select * from employee e1
 where 3 = 
 (select count(e2.age)
 from employee e2 where e2.age>= e1.age); 
 
 select * from employee; 
 update employee set age = 70 where id = 1; 
 