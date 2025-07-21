create database rev;
use rev;
create table dd(
id int primary key , 
name varchar(50),
age int,
locations varchar(50) not null
);
drop table dd;
insert into dd values(1 , 'Harish' , 20 , 'Ballia');
insert into dd values(2 , 'Tiwari' , 21); -- error because there are 4 columns but youhave given 3 data or values
insert into dd(id , name , age) values(3 ,'Shikha' , 30);
select* from dd;
show databases;
show tables;
select database();
desc  dd;
describe table dd;