use collage; 

show tables; 

select * from employee; 

select e_id, e_name, e_salary , 2*e_salary+100 from employee;
select e_salary, e_salary * 5 as increamentSalary from employee;

select e_id from employee where e_salary >= 10000; 

desc employee; 
select e_id, e_name from employee where e_dept in ('computer science' , 'salesman');  

select e_salary , e_name from employee where e_salary between 30000 and 40000; 
select * from employee; 
select e_name from employee where e_name like "r%"; 
select e_name from employee where e_name like "%a";
select e_name from employee where e_name like "_i%"; 

-- POWER(X,Y)
select power(2,4);
-- ROUND(X,Y)
select round(1234.65345,2);
select round(12.54);
-- MOD(x,y) 
select mod(231,2); 	

-- STRING FUNCTION 
-- upper(string) or Ucase(string)
select upper("himanshu kumar");
select ucase("sundaram kumar");
-- lower(string) or Lcase(string)
select lower("HIMANSHU KUMAR");
select lcase("SUNDARAM KUMAR"); 
-- length(string)
select length("Himanshu kumar"); 
-- left(string,n) - from left n number of characters we need from the string.
select left("Himanshu kumar",5); 
-- right(string,n) - from right n number of characters we need from the string. 
select right("Himanshu kumar",5);
-- ltrim(string)
select ltrim("Himanshu kumar and the student union");
-- rtrim(string)
-- trim(string)

-- DATE AND TIME FUNCTIONS 
-- date()
select date('2023-05-01 12:00:00') as Date;
-- now()
select now();
-- month(date)
select month('2024-05-13') as month;
-- year(date)
select year('2024-05-13');
-- monthname(date)
select monthname('2024-05-13') Monthname;
-- dayname(date)
select dayname('2024-05-14') dayName;

-- AGGREGATE FUNCTIONS
select count(*) from employee;
select count(e_salary) from employee;

-- sum 
select sum(e_salary) as salary from employee;

-- avg()
select avg(e_salary) as avg_salary from employee;

-- max()
select max(e_salary) as max_salary from employee;
-- min()
select min(e_salary) as min_salary from employee;

-- group by
select e_dept , count(*) from employee group by e_dept;
select e_dept , count(*) as NumberOfEmp from employee group by e_dept having count(*)>1;
select e_dept , count(*) as NumberOfemp from employee group by e_dept having count(*)>1 
order by NumberOfEmp;

show tables;
select * from cost;
select * from uniform;

-- join operations
select * from cost,uniform;

-- inner join 
select * from cost inner join uniform on cost.c_id = uniform.u_id;

-- Left join
select * from cost left join uniform on cost.c_id = uniform.u_id;

-- right join
select * from cost right join uniform on cost.c_id = uniform.u_id;

-- full outer join
select * from cost left join uniform on cost.c_id = uniform.u_id
union
select * from cost right join uniform on cost.c_id = uniform.u_id;


-- set operations
-- union
select * from cost 
intersect
select * from uniform;

-- minus or except

select * from cost 
 except
select * from uniform;





