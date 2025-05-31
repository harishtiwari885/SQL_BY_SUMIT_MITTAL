create database Mobile;
use Mobile;
create table pp(
id int primary key,
name varchar(50),
age int not null
);
insert into PP values
(1 ,'Harish Tiwari' ,20),
(2 ,'Routu Yesh' ,21),
(3 ,'Akkeineni Akhil' ,22),
(4 ,'Jarvis' ,23),
(5 ,'Friday' ,24);
insert into Pp values(6 , 'Mummy' , 45);
select * from pp;
drop database mobile;
/*
So sql is not a case sensitive , 
 ✅ Why?
You are using MySQL on Windows (most likely), and:
🔸 MySQL on Windows is not case-sensitive for table names
🔸 So PP, pp, Pp, pP → all are treated as same
That’s why your query worked even though you used different casing
*/
select database();-- this is used to tell your in which database rigt know
show tables;-- database ke andar kitne tables hai , ye command batata hai
desc PP;-- table ka structure kya hai ,uske andar kitne columns hai
describe Pp;-- same as desc