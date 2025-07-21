create database limitClause;
use limitClause;
create table kk(
id int primary key,
name varchar(50),
age int ,
locations varchar(50) default 'delhi'
);
insert into kk(id , name , age) values
(1 , 'Harish' , 20 ),
(2 , 'Sumit' , 21 ),
(3 , 'Sudhanshu' , 22 ),
(4 , 'Soumya' , 23 ),
(5 , 'Vaishnavi' , 24 ),
(6 , 'Sarswati' , 25 ),
(7 , 'cutie' , 26 ),
(8 , 'Shikha' , 27 );
-- limit clause : it is used to restrict or to select or read limited number of rows
select * from kk  limit 3;
-- limit clause with offset : offset is used for pagination
select * from kk limit 3 offset 3;
-- another way of offset limit x , y : here x = skip and y = limit
select * from kk limit 3 , 3;
-- limit clause with order by : order by is used with arranging the data in order in ascending or descending
select * from kk order by age desc limit 5;
-- limit clause with where clause: where clause is used to set condition and then filter the rows based on that condition
select * from kk where age limit 5;
-- top in sql 
select top 5 * from students;
-- here top keyword doesnt work in mysql server or database 
-- sql uses only limit clause 
-- limit on multiple columns 
select name , age from kk limit 4;
select * from kk where name limit 2  age limit 4;