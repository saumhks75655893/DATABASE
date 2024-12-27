use joins; 
-- VIEW 
select * from employee; 

-- creating a view 
create view custom_view as select fname, lname, age from employee; 

-- viewing from view 
select * from custom_view; 

desc employee; 

-- altering the view
alter view custom_view as select fname, lname, age, city from employee; 

-- droping the view
drop view if exists custom_view; 



