create database Like2;
use Like2;
create table hh(
id int primary key,
name varchar(50),
marks int , 
loactions varchar(50) default 'Delhi'
);
drop table hh;
insert into hh(id , name , marks) values
(1 , 'Harish' , 98),
(2 , 'harsish' , 100),
(3 , 'Sumit' , 78),
(4 , 'Shikha' , 79),
(5 , 'Shikha' , 79);
-- Q1. Display all students sorted by their marks in ascending order.
select * from hh order by marks asc;
-- Q2. Display all students sorted by their marks in descending order.
select * from hh order by marks desc;
-- Q3. Display all students sorted by name in alphabetical order.
select * from hh order by name asc; 
-- Harish , harsish , 4)shikha , 5) shikha , sumit
/* is queery main Shikha and Shikha is sametho jo order mein insert kiya hai vohi ordere main print hoga ;
that is 4  then 5 */
-- what about same marks 
select * from hh order by marks asc; -- 3)78 , 4) 79 , 5) 79 , 1) 98 2) 100