create database EscapeSequence;
use EscapeSequence;
create table op(
id int primary key,
firstname varchar(50),
lastname varchar(50),
age int,
locations varchar(50)
);
insert into op values
(1 , '\"Harish\"' , 'Tiwari' , 20 , 'Delhi'),
(2 , 'Rout\"u' , 'Yesh' , 20 , 'Delhi'),
(3 , 'tota' , '\@ Akhil' , 20 , 'Delhi'),
(4 , '\# Sarvu' , 'Tiwari' , 20 , 'Delhi'),
(5 , '\^Sai\^' , 'Ram' , 20 , 'Delhi');
/* 1) so just like in java i need to tell sql by using backslash(\) that it is special character,
and just print it,
2) we can use double quotes inside that we can use special character
*/
insert into op values
(6 , "Sumi't" , '@Tiwari' , 25 , 'Delhi');
select * from op;