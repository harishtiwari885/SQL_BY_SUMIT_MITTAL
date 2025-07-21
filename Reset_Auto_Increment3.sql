create database Reset_Auto_Increment3;
use Reset_Auto_Increment3;
create table nn(
id int auto_increment unique key,
firstname varchar(50),
lastname varchar(50),
age int ,
locations varchar(50) default 'Delhi'
);
insert into nn(firstname , lastname , age ) values
( 'Harish' , 'Tiwari' , 20),
( 'Sumit' , 'Tiwari' , 23),
( 'Shikha' , 'Tiwari' , 30),
( 'Sudhanshu' , 'Tiwari' , 23),
( 'Soumya' , 'Tiwari' , 18);
select * from nn;
/* just like truncate  drop works the smae it can also reset auto increment*/
insert into nn(firstname , lastname , age ) values
( 'pihu' , 'Tiwari' , 20),
( 'sihu' , 'Tiwari' , 23),
( 'Sarsati' , 'Tiwari' , 30),
( 'Cutie' , 'Tiwari' , 23),
( 'Luto' , 'Tiwari' , 18);
drop table nn;
