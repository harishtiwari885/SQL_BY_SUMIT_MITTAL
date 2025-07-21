create database orderby45;
use orderby45; 
create table gg(
id int primary key,
name varchar(50) ,
age int 
);
-- inserting the data or rows 
insert into gg values
(1 , 'Harish' , 16),
(2 , 'Sumit' , 4),
(3 , 'chotu' , 16),
(4 , 'Soumya' , 22);
-- sort them in ascending order 
select * from gg order by age , id; -- even though i havent mention it will sort in the ascending order(asc);
/* but problem in this query :
select * from gg order by age , id: isme id = 2 ko age = 4 hai and id = 1 ko age = 16 hai agar main asc karun tho :
age main phele  4 , then 16 but in id it will be  1 then 2 */
/* tho isme phele age ke baises pe hi kyun mujhe sort huva why not id
isliye huva kyuki : main sabse phele age mention kiya and jab age ke  rows same hai tho id ke basis pe sort hoga 
eg: sabse chota age = 4 ye upper hoga ,
then uske baadh chota age = 16 but ye do baar hai tho idhar :
id ke basis pe hoga eg id = 1 sabse chota tho id = 1 then age 16 and 
then id = 3 age 16 and then id = 4 age = 22  */
/* but what if i dont mention the id then kis basis pe sort hoga */
select * from gg order by age ;
/* 
select * from gg order by age ; = this has given the same result as: select * from gg order by age , id;
in dono ka result same hai */
-- but what if i want to sort age in asc and id in desc then what happens 
select * from gg order by age asc , id desc;
/* ye bhi age ke basis pe hi sort huva man */
-- so upto here it was int with order by 
/* ============================================================================================================
=========================================================================================================
*/
create table kk(
id int primary key ,
name varchar(50) ,
age int 
);
-- inserting the the rows 
insert into kk values 
(1 , '@' , 20),
(2 ,'#' , 21),
(3 , '$' , 22),
(4 , '!' , 23),
(5 , 'Apple' , 24),
(6 , 'apple' , 25),
(7  , 'Banana' , 26);
-- understnaidng the string with order by 
-- ascci value of @ = 64 , # = 35 , $ = 36 , ! = 33 
/* so my output for asc :
(! , # , $ , @ , id = 5 Apple , id = 6 apple , Banana) for ascending order */
select * from kk order by name ;
/* here i got different i got 
( ! , @  , # , $ ,  aaple , apple , banana par aisa kyun ) kyuki ke collation ke based pe ho raha hai not 
in ascii based , */
-- so what if i want the sorting order based on the ascii 
/* ascii ke based pe :
1) special charcters 
2) Captial letter
3) Small letters*/
select * from kk order by binary name asc;
/* isme mera output :
( ! , # , $ , @ , id = 5 Apple , id = 7 Banana , id = 6 apple )*/
-- yes i got the same output for the select * from kk order by binary name asc;





