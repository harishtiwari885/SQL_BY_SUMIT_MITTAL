create database Unique1;
use Unique1;
create table qq(
id int unique key,
firstname varchar(50),
age int ,
locations varchar(50) unique key
);
/* unlike primary key we can have multiple unique key*/
insert into qq values
(1 , 'Harish' , 20 , 'Delhi'),
(2 , 'Shikha' , 31 , 'Ballia'),
(3 , 'Vaishnavi' , 18 , 'Repura'),
(4 , 'Sudhanshu' , 23 , 'Sujanipur');
/* unlike primary key , unique key can hold or store null values as well*/
insert into qq values
(null , 'Sumit' , 24 , 'Hyderabad'),
(5 , 'Soumya' ,  16  , null);
/* unlike other famous databases , it can hold muliple null values */
insert into qq values(null , 'Pihu' , 12 , null); 
select * from qq;
drop table qq;
