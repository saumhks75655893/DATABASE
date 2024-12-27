-- SQL JOINS -----------------

-- 1. Inner Join
-- return a common record
select * from student inner join library on student.rno=library.rno;
-- 								or
select * from student,library where student.rno=library.rno;

-- if specific record needed
select * from student inner join library on student.rno=library.rno where bookid="b1"; 

-- 2. Left Join 
-- all records from left table and matching records or non matching filled NULL
-- from right table

select * from student left join library on student.rno=library.rno;

-- 3. Right join 
-- matching or filled with null records from left table and all records from right
-- table.

select * from student right join library on student.rno = library.rno;

-- 4. Full join 

-- all records from left and right table are fetched. 
select * from student full join library;

-- 5. Self Join
-- only one table involves in this join.
show tables;
select * from student2 as s1, student2 as s2 where s1.rno = s2.branchid; 






