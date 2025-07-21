create database autoIncrement2;
use autoIncrement;
create table hh(
id int auto_increment key,
name varchar(50),
age int ,
locations varchar(50) default 'delhi'
);
/* so even though iam not mentioning anything for the key , it will consider it as primary key ,
so thats whyi got error of duplicate entry for primary key for:
(1 , 'Harish' , 20),
(1 , 'Tiwari' , 20); for this query*/
insert into hh(name , age) values
('Harish' , 20),
('Tiwari' , 20);
select* from hh;
/* truncate can reset the auto increment lets see*/
truncate table hh;
insert into hh(name , age) values
('Sumit' , 24),
('Chotu' , 23);
select * from hh;
/* so yes , it reset the auto increment */
/* drop even this can reset the auto increment*/
drop table hh;
insert into hh(name , age) values
('Shikha' , 30),
('Vaishanavi' , 19);
select * from hh;
/* so yes it does the reset of auto increment*/
/* Delete does not reset the auto increment*/
delete from hh where id = 2;
/* so yes this does not reset because , it will remeber the highest value used + 1 ; then it will increment the value */