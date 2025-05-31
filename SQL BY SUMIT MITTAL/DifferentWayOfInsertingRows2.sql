create database rowInsert;
use rowInsert;
create table aa(
id int primary key,
firstname varchar(50),
middlename varchar(50),
lastname varchar(50),
age int,
location varchar(50)
);
drop table aa;
/* there are two ways by which i can insert rows they are:
1)  using insert statement for every row
2) or combining all rows in single insert statement
*/
-- this is an eg of using insert statement for every row:
insert into aa values
(1 , 'Harish' , 'Kumar' , 'Tiwari', 20 , 'Ballia');
-- this is an eg of combining all rows in single insert statement
insert into aa values
(2 , 'Sumit' , 'Kumar' , 'Tiwari', 23 , 'Ballia'),
(3 , 'Sudhanshu ' , 'Kumar' , 'Tiwari', 22 , 'Pune'),
(4 , 'Soumya' , 'Kumar' , 'Tiwari', 18 , 'Pune'),
(5 , 'Vaishnavi' , null , 'Tiwari', 19 , 'Ballia');
insert into aa values
(6 , 'Sarswati' , ' ' , 'Tiwari', 16 , 'Ballia');
select * from aa;