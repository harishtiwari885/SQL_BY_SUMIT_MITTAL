create database rev3;
use rev3;
create table aa(
id int primary key ,
name varchar(50),
age int,
locations varchar(50) default 'Delhi'
);
insert into aa(id , name , age) values
(1 , '\@Harish\#' , 20);
select * from aa;
/* use backslash(\) for the escape sequence*/