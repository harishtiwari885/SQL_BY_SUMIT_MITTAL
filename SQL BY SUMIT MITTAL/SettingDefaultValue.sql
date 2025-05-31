create database banglore;
use banglore;
create table og(
id int primary key ,
firstname varchar(50),
lastname varchar(50),
age int,
locations varchar(50) default 'Banglore' -- here  we can also set default value like this syntax: default 'value'.
);
insert into og(id , firstname ,lastname , age)values
(1 , 'Harish' , 'Tiwari' , 20),
(2 , 'routu' , 'yesh' , 21),
(3 , 'routu' , 'girish' , 22),
(4 , 'tota ' , 'akhil' , 23),
(5 , 'Sarvu' , 'vikas' , 25 );
insert into og values(6 , 'Sai' , 'Ram' , 22 , 'Delhi'); -- here like how i have changed the default value even you can change
select * from og;
select database();
