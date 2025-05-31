create database EmailAndPhone;
use EmailAndPhone;
create table ii(
id int primary key ,
firstname varchar(50),
lastname varchar(50),
email varchar(50) unique key,
numbers bigint unique key
);
/* inserting email and phone */
insert into ii values
(1 , 'Harish' , 'Tiwari' , 'harishtiwari7670@gmail.com' , 7670963096),
(2 , 'Sumit' , 'Tiwari' , 'sumittiwari9550@gmail.com' , 9550238464),
(3 , 'Vijay Shanker' , 'Tiwari' , 'Vijaytiwari7569@gmail.com' , 7569642780),
(4 , 'Anju' , 'Tiwari' , 'Anjuiwari8712@gmail.com' , 8712110804);
select * from ii;
drop table ii;