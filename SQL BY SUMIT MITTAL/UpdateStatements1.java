create database UpdateStatements1;
use UpdateStatements1;
create table ww(
id int primary key,
firstname varchar(50),
lastname varchar(50),
age int ,
salary int,
locations varchar(50) default 'Delhi'
);
insert into ww(id , firstname , lastname, age , salary) values
(1, 'Harish' , 'Tiwari' , 20 , 40000),
(2, 'Sumit' , 'Tiwari' , 23 , 50000),
(3, 'Sudhanshu' , 'Tiwari' , 22 , 60000),
(4, 'Harish' , 'Tiwari' , 16 , 70000);
/* updating or incrementing the salary */
set sql_safe_updates = 0; -- so that i can update all with mentioning
update ww set salary = salary + 5000;
select * from ww;
