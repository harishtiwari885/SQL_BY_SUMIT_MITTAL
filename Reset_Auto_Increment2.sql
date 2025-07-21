create database Reset_Auto_Increment2;
use Reset_Auto_Increment2;
create table ff(
id int auto_increment unique key,
firstname varchar(50),
lastname varchar(50),
age int ,
locations varchar(50) default 'Delhi'
);
insert into ff(firstname , lastname , age ) values
( 'Harish' , 'Tiwari' , 20),
( 'Sumit' , 'Tiwari' , 23),
( 'Shikha' , 'Tiwari' , 30),
( 'Sudhanshu' , 'Tiwari' , 23),
( 'Soumya' , 'Tiwari' , 18);
select * from ff;
truncate table ff;
/* Truncate is used for deleting the entire table , and it is used as reseting the auto increment:
means that : when the entire rows is deleted then again from the starting the increment is done*/
insert into ff(firstname , lastname , age ) values
( 'pihu' , 'Tiwari' , 20),
( 'sihu' , 'Tiwari' , 23),
( 'Sarsati' , 'Tiwari' , 30),
( 'Cutie' , 'Tiwari' , 23),
( 'Luto' , 'Tiwari' , 18);
select * from ff;