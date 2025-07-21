create database primarykey1;
use primarykey1;
create table tt(
id int primary key ,
name varchar(50),
age int ,
locations varchar(50) default 'Delhi'
);
insert into tt(id , name , age) values
(1 , 'Harish' , 20);
insert into tt(id , name , age) values
(101 , 'Tiwari' , 20);
/* does primary key is mutable ,lets see */
update tt set id = 101 where id = 1; -- this line has given me the error that 101 is already present so it is a duplicate entery
update tt set id = 102 where id = 1;
select * from tt;