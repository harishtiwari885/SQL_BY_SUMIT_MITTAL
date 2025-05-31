create database HandlingNotNull;
use HandlingNotNull;
create table ff(
id int primary key,
firstname varchar(50),
middlename varchar(50) not null,
lastname varchar(50),
age int ,
locations varchar(50)
);
insert into ff(id , firstname , middlename, lastname , age , locations)values
(1 , 'Harish' , 'Kumar', 'Tiwari' , 20 , 'Delhi'),
(2 , 'Routu' ,'yesh','wanth' , 21, 'Hyderabad'),
(3 , 'Routu' , 'kumar', 'girish' , 20, 'Hyderabad'),
(4 , 'Tota' ,'shstariya', 'Akhil' , 20, 'Hyderabad');
/* 
Since the middlename column in your ff 
table is defined with the NOT NULL constraint:
It must have a non-null value in every INSERT statement. 
But in your INSERT queries, you're not providing a value for middlename, 
which will cause an error like this:
*/
select * from ff;

