create database Alias;
use Alias;
create table aa(
id int primary key , 
firstname varchar(50),
lastname varchar(50),
age int 
);
/* so alias hai kya phele:
so alias is used for giving temporary name to columns , so it will create temporary,
column and in that it will show output to the user , " but in the database the actual ,
table is not changed and neither the temporary column is created , it is just used as temporary name ,
for the column to show data to the user */
/* As keyword : 
this is nothing but assignig the alias or helping in giving name to the alias ,
it tells sql that next word is temporary name for the column*/
insert into aa values
(1 ,'Harish' , 'Tiwari' , 20),
(2 ,'Routu' , 'yesh' , 21),
(3 ,'Tota' , 'Akhil' , 22),
(4 ,'Sarvu' , 'Vikas' , 23),
(5 ,'Routu' , 'Girish' , 24);
-- alias for particular or single column:
select id as student_id from aa;
-- alias for multiple column 
select firstname as name1 , lastname as surname , age as peoples_ages from aa;
-- can i give alias name without as keyword 
select firstname actual_name from aa;
-- can i give  multiple alias name without  as keyword
select  firstname actual_name , lastname sur_name , age peoples_age from aa;