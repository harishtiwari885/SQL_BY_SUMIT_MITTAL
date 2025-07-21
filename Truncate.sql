create database truncate1;
use truncate1;
create table dd(
id int primary key,
firstname varchar(50),
lastname varchar(50),
age int ,
locations varchar(50) default 'Delhi'
);
insert into dd(id , firstname , lastname , age) values
(1 , 'Harish' , 'Tiwari' , 20),
(2 , 'Sumit' , 'Tiwari' , 23),
(3 , 'Shikha' , 'Tiwari' , 30),
(4 , 'Sudhanshu' , 'Tiwari' , 23),
(5 , 'Soumya' , 'Tiwari' , 18);
set sql_safe_updates = 0;
delete from dd where age = 18;
/* Truncate: this is used for deleting the enitire rows not even the single rows can be 
left with condition , truncate can never work with ,
condition and it is used for the deleting the entire table rows ,
important note: truncate does not delete the entire table , it will delete the entire rows but it will keep the structure of the table,
for future use
syntax ; truncate table table_name;
*/
truncate table dd;
insert into dd(id , firstname , lastname , age) values
(1 , 'Harish' , 'Tiwari', 20);
select * from dd;
