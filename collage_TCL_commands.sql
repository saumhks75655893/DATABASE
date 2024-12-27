-- TCL (Transaction Control Language) 
-- COMMIT
-- ROLLBACK
-- SAVEPOINT

use collage;

start transaction;

create table transaction
(t_id int primary key,
t_name varchar(50),
t_date date
);

